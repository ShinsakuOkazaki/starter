assign_hash <- Vectorize(assign, vectorize.args = c("x", "value"))
get_hash <- Vectorize(get, vectorize.args = "x")
exists_hash <- Vectorize(exists, vectorize.args = "x")

hash_student <- new.env(hash = TRUE, parent = emptyenv(), size = 10000)

#studentEmail <- 'so4639@bu.edu'
#assignment <- "CS555-Assignment-1"
#task <- "task1" or "task2"

f <- system.file("extdata", "Assignment1.json", package = "starter")
json <- tryCatch(fromJSON(f),
                  error = function(e){
                    print("Incorrect JSON file. This file does not exist.")
                    stop()
                  })

#function for assigning random value for a key
assign_random <- function(key, hash) {
  value <- sample(0:10000, 1, replace = TRUE)
  assign_hash(key, value, hash)
}

#function to generate data
generateData <- function(studentEmail, assignmentID){
  #hash student email address
  assign_random(studentEmail, hash_student)
  studentID <- hash_student[[studentEmail]]
  #set random seed
  set.seed(studentID)
  #create data set
  dataset <-rnorm(100, mean = 10, sd=1)
  return(dataset)
}

#function to get answer frin json
getAnswer <- function(taskID) {
  correctAnswer <- eval(parse(text = json$question[[taskID]]$CorrectAnswer))
  return(correctAnswer)
}

#function to submit answer with assignmentID and taskID
submit <- function(answer, assignmentID, taskID) {
  correctAnswer <- getAnswer(taskID)
  if (answer < correctAnswer + json$question[[taskID]]$matchingThreshold &&
      answer > correctAnswer - json$question[[taskID]]$matchingThreshold) {
    print('Correct')
  } else {
    print('Incorrect')
  }
}

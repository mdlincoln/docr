iris

iris_docs <- list(
  Sepal.Length = "The length of a sepal",
  Sepal.Width = "The width of a sepal",
  Petal.Length = "The length of a petal",
  Petal.Width = "The width of a petal"
)


dictionary_name <- "dictionary"

assign_docs <- function(df, docs) {
  stopifnot(is.data.frame(df))
  stopifnot(is.list(docs))
  stopifnot(all.equal(names(df), names(docs)))

  attr(df, dictionary_name) <- docs
  df
}

assign_docs(iris, iris_docs)

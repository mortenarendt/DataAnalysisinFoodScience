#' Mouse
#'
#' Intervention of 40 mice with low fat and casein, high fat and whey protein and high fat and casein followed over a course of 14 weeks measuring body weight, and a set of six biomarkers at 14 weeks.
#' @docType data
#' @keywords dataset
#' @usage data(mouse)
#' @format A data frame with 40 rows and 28 coloumns
#' @references Tranberg et al (2013) Whey Protein Reduces Early Life Weight Gain in Mice Fed a High-Fat Diet PLoS ONE Volume 8 | Issue 8 | e71439 (\href{http://journals.plos.org/plosone/article?id=10.1371/journal.pone.0071439})
#' @source \href{http://journals.plos.org/plosone/article?id=10.1371/journal.pone.0071439}
#'
#' @examples
#' data(mouse)
#' ggplot2::qplot(data = mouse,factor(Fat_Protein),glucose, geom = c('boxplot','jitter'))
#'
"mouse"


install.packages("rmarkdown")
library(rmarkdown)
# Create an RMarkdown report
rmarkdown::render("climate_analysis_report.Rmd", output_format = "pdf_document")

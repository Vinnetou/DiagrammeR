# Code placed in this file fill be executed every time the
      # lesson is started. Any variables created here will show up in
      # the user's working directory and thus be accessible to them
      # throughout the lesson.

.get_course_path <- function(){
  tryCatch(swirl:::swirl_courses_dir(),
           error = function(c) {file.path(find.package("swirl"),"Courses")}
  )
}

source(file.path(.get_course_path(), "Diagrammer", "Introduction", 
                 "graphviz_example.R"))

source(file.path(.get_course_path(), "Diagrammer", "Introduction", 
                 "mermaid_example.R"))

undirected_xyz <- "grViz('graph {X; Y; Z; X--Y; Y--Z; X--Z;}')"

mermaid_abcd <- "mermaid('graph LR; A-->B; A-->C; B-->D; C-->D')"
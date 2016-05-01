name := "spark-deeplearning"

version := "1.0"

scalaVersion := "2.11.8"
resolvers += Resolver.mavenLocal
libraryDependencies += "org.deeplearning4j" % "dl4j-spark-nlp" % "0.4-rc3.9-SNAPSHOT"
libraryDependencies += "org.nd4j" % "nd4j-native" % "0.4-rc3.9-SNAPSHOT"

//libraryDependencies += "org.deeplearning4j" % "dl4j-spark" % "0.0.3.3.3.alpha1-SNAPSHOT"

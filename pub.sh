#!/bin/bash
echo getting publisher
curl -O http://build.fhir.org/org.hl7.fhir.igpublisher.jar
echo getting rid of old output
rm /guide-out/*
echo getting rid of .DS_Store files since they gum up the igpublisher....
find . -name '.DS_Store' -type f -delete
echo running publisher
cd /guide-in
java -jar /publisher/org.hl7.fhir.igpublisher.jar -ig ig.json -watch -tx $NA
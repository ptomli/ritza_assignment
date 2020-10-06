#!/bin/bash

if cat Example.java | grep -q "ReadyForSubmission=YES"; then
  curl -X POST \
       -H "Content-Type: multipart/form-data" \
       -F "codefile=@Example.java" \
       https://ritzaautograder.paultomlin.repl.co
else
  javac Example.java
  java Example
fi
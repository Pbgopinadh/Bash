#! /bin/bash


ls -ltraz 2>> correct.log
ls -ltra 1> correct.log
ls -ltra 1>> correct.log
ls -ltra 2>> correct.log
ls -ltra 2> correct.log
ls -ltra &> correct.log
ls -ltra &>> correct.log
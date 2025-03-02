#!/bin/bash

birth_install=`stat -c %w /`
current=`date +%s`
time_progression=`$current - $birth_install`
days_difference=`$time_progression / 86400`
echo $days_difference

#!/bin/bash

# Author: Matthew Obono

# This script will add new user, assign password to user, add user to existing group and also display results.

echo Please enter names of new user
read names

sudo useradd $names

echo Please assign Password to $names

sudo passwd $names

echo Please asisgn $names to an existing group

echo Enter group name
read group

sudo usermod -G $group $names

echo $names has been added to the $group  group
sleep 6

echo You are all set. Congratulations!

sleep 10

sudo tail -3 /etc/passwd

sudo tail -3 /etc/shadow

sudo tail -10 /etc/group


# Great job guys!

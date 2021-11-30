#!/bin/sh
def() {
        echo inner function.
	eval ls $1
	return 
}
echo start function.
def $1
echo end function.
exit 0
~         

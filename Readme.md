What we did
===========

1. Downloaded 911 calls from http://chicagojustice.org/foi/data-sets-available-for-download/calls-for-police-service
    - run '''python/extract.py''' to get mapping from short form categories to actual categories
       (note, did a little extra after the script here to fix a few, so might just want to use the file
       in the repo without rerunning)
    - run python/merge_all_years.py to get a single file of all events
2. Had to get the 2013 311 data to match up to the 911
3. Ran '''python/merge_all_years.py''' to aggregate the 911 file
4. All analysis is done via '''R/analysis.R'''

Note to play with the data you'll have to do the following:
1. untar the file '''data.tgz'''
2. If you want the 311 data, its at '''https://dl.dropboxusercontent.com/u/53207718/311.tgz'''
# rsync-sense

## Exclude options

Will exclude from the backup a directory named music, everywhere it appears
````
rsync -azhP --protect-args --itemize-changes --exclude music ./src-dir ~/rsync-sense
````

Will exclude from the backup a directory named bob/music, everywhere it appears
````
rsync -azhP --protect-args --itemize-changes --exclude bob/music ./src-dir ~/rsync-sense
````

Will exclude from the backup only one music folder. This argument to exclude makes sense because src-dir is created on the destination and not just it's contents
````
rsync -azhP --protect-args --itemize-changes --exclude /src-dir/bob/music ./src-dir ~/rsync-sense
````

## Verify the copy
````
diff --brief --recursive src-dir ~/rsync-sense/src-dir/
````

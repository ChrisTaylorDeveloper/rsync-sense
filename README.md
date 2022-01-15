# rsync-sense
Test your rsync command.  

Will exclude from the backup a directory named music, everywhere it appears
````
rsync -azhP --protect-args --itemize-changes --exclude music ./home ~/rsync-sense
````

Will exclude from the backup a directory named bob/music, everywhere it appears
````
rsync -azhP --protect-args --itemize-changes --exclude bob/music ./home ~/rsync-sense
````

Will exclude from the backup only one music folder
````
rsync -azhP --protect-args --itemize-changes --exclude /home/bob/music ./home ~/rsync-sense
````
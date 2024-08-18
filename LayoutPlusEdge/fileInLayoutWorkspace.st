"Select me in a FileList; then `open in workspace`.
Close all (other) windows than this workspace. 
Preferences:
  Hide taskbar
  Set author intials"
[ Delay forSeconds: 8. "Close this workspace"
"set path for LayoutMorph.st"
 'LayoutMorph.st' asFileEntry readStreamDo: [ :stream | stream fileIn ].
] fork.

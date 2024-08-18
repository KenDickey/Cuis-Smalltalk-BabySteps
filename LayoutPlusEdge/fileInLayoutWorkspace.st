"Select me in a FileList; then `open in workspace`.
Close all (other) windows than this workspace. 
Preferences:
  Hide taskbar
  Set author intials"
[ Delay forSeconds: 8. "Close this workspace"
 'LayoutMorph.st' asFileEntry readStreamDo: [ :stream | stream fileIn ].
] fork.

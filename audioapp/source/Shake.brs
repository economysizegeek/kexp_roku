'**********************************************************
'**  Audio Player Example Application - Audio Playback
'**  November 2009
'**  Copyright (c) 2009 Roku Inc. All Rights Reserved.
'**********************************************************

' Shake support routines

Function CreateShakeSongList() as Object
    aa = CreateObject("roAssociativeArray")
    aa.posteritems = CreateObject("roArray", 10, true)
song = CreateSong("Shake","Shake The Shake Show","Leon Burman", "wma", "http://media-wm.cac.washington.edu/kexpspool/201001011800to01020000_1-20k.asf","http://kexp.org/images/sts_program_header.jpg")
    aa.posteritems.push(song)
    return aa
End Function

Sub DoShake(from as string)
    'Since there is only one item, go right into playing the Shake stream
    SongList = CreateShakeSongList()
    Show_Audio_Screen(songlist.posteritems[0], from)
End Sub

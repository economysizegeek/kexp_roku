'**********************************************************
'**  Audio Player Example Application - Audio Playback
'**  November 2009
'**  Copyright (c) 2009 Roku Inc. All Rights Reserved.
'**********************************************************

' Kexp support routines

Function CreateKexpSongList() as Object
    aa = CreateObject("roAssociativeArray")
    aa.posteritems = CreateObject("roArray", 10, true)
    song = CreateSong("Kexp","Live MP3 Internet Radio Stream","Many", "mp3", "http://kexp-mp3-2.cac.washington.edu:8000/","http://www.kexp.org/photos/s_zoom-sm.jpg")
    aa.posteritems.push(song)
    return aa
End Function

Sub DoKexp(from as string)
    'Since there is only one item, go right into playing the Kexp stream
    SongList = CreateKexpSongList()
    Show_Audio_Screen(songlist.posteritems[0], from)
End Sub

'**********************************************************
'**  Audio Player Example Application - Audio Playback
'**  November 2009
'**  Copyright (c) 2009 Roku Inc. All Rights Reserved.
'**********************************************************

' Proton support routines

Function CreateProtonSongList() as Object
    aa = CreateObject("roAssociativeArray")
    aa.posteritems = CreateObject("roArray", 10, true)
    song = CreateSong("Proton Radio","Live MP3 Internet Radio Stream","Many", "mp3", "http://scfire-dtc-aa05.stream.aol.com:80/stream/1041","http://www.protonradio.com/images/rfr09/livestream.jpg")
    aa.posteritems.push(song)
    return aa
End Function

Sub DoProton(from as string)
    'Since there is only one item, go right into playing the Proton stream
    SongList = CreateProtonSongList()
    Show_Audio_Screen(songlist.posteritems[0], from)
End Sub

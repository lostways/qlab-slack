# Cue to send a slack message via webhook
# put your message in the notes field

property webhookURL : "[Webhook URL]"
tell application id "com.figure53.qlab.4" to tell front workspace
    set activeCue to last item of (active cues as list)
    set cueNotes to notes of activeCue
    do shell script "curl -X POST --data-urlencode 'payload={\"text\":\"" & cueNotes & "\"}' " & webhookURL
end tell
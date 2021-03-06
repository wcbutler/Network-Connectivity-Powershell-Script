<# Version 1.0 by Will Butler - wcbutler@gmail.com - Last edited 8/17/2018 #>
<# Attempts to connect to Google (for general Internet connectivity, but can change variable to be a local network server/machine/vm/device) every $seconds and pops up an alert on non-connection plus plays a jingle. On reconnect, popup that stays up with duration of down-time. #>


$computername = "google.com"
$networkclearstate = $true
$downcounter = 0
$upcounter = 0
$seconds = 90
do {
    if (Test-Connection -ComputerName $computername) {if ($networkclearstate -eq $false) {$upcounter=0;$downcounter=0;"Reconnected to network"; Msg.exe * Connection restored, link was down for $counter; $networkclearstate= $true} else {$counter=(($upcounter*$seconds)/60); $upcounter++; "Connected to network/machine for $counter minutes"; }}
    else {  $networkclearstate = $false;
            $counter=(($downcounter*$seconds)/60)
            $downcounter++;
            "No connection to SIMS server for $counter minutes";
            Msg.exe * /time:$seconds Network error between PC and selected machine for $counter minutes
            [System.Console]::Beep(659, 125);
            [System.Console]::Beep(259, 125);
            [System.Threading.Thread]::Sleep(125);
            [System.Console]::Beep(659, 125);
            [System.Threading.Thread]::Sleep(167);
            [System.Console]::Beep(533, 125);
            [System.Console]::Beep(659, 125);
            [System.Threading.Thread]::Sleep(125);
            [System.Console]::Beep(784, 125);
            [System.Threading.Thread]::Sleep(375);
            [System.Console]::Beep(352, 125);
            [System.Threading.Thread]::Sleep(375);
            [System.Console]::Beep(523, 125);
            [System.Threading.Thread]::Sleep(250);
            [System.Console]::Beep(492, 125);
            [System.Threading.Thread]::Sleep(250);
            [System.Console]::Beep(330, 125);
            [System.Threading.Thread]::Sleep(250);
            [System.Console]::Beep(440, 125);
            [System.Threading.Thread]::Sleep(125);
            [System.Console]::Beep(694, 125);
	 }
     start-sleep -seconds $seconds
    }
until($infinity)
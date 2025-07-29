Add-Type @"
using System;
using System.Runtime.InteropServices;

public class MouseMover {
    [DllImport("user32.dll", CharSet = CharSet.Auto, CallingConvention = CallingConvention.StdCall)]
    public static extern void mouse_event(uint dwFlags, uint dx, uint dy, uint dwData, UIntPtr dwExtraInfo);

    public const int MOUSEEVENTF_MOVE = 0x0001;
}
"@


function Set-MousePosition(){
    $dxRight = [uint32]1
    
    $dxLeft  = [uint32]4294967295

    [MouseMover]::mouse_event([MouseMover]::MOUSEEVENTF_MOVE, $dxRight, 0, 0, [UIntPtr]::Zero)
    
    Start-Sleep -Milliseconds 100
    
    [MouseMover]::mouse_event([MouseMover]::MOUSEEVENTF_MOVE, $dxLeft, 0, 0, [UIntPtr]::Zero)
    
    Start-Sleep -Seconds 1
    }



while($true) {
    $minimumIdleTime = Get-Random -Minimum 30 -Maximum 59
    $sleepTime = 5
    
    $idleTime = [IdleTime]::GetIdleTime()
    
    if ($idleTime.TotalSeconds -gt $minimumIdleTime){Set-MousePosition}
    
    Start-Sleep -Seconds $sleepTime
    }

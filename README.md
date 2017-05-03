# twrp_device_onyx_c67ml_carta2
TWRP device tree for ONYX Boox C67ML carta2 e-ink reader

## Known issues
- Compilation succeed, but it cannot be booted properly --- **KERNEL PANICKED!**

### Kernel log
`
<0>[    6.866080] Kernel panic - not syncing: Attempted to kill init!
<4>[    7.269506] [<c0440ac4>] (unwind_backtrace+0x0/0xe0) from [<c08a9558>] (panic+0x68/0x190)
<4>[    7.277718] [<c08a9558>] (panic+0x68/0x190) from [<c046e804>] (do_exit+0xb0/0x6e0)
<4>[    7.285314] [<c046e804>] (do_exit+0xb0/0x6e0) from [<c046f0ec>] (do_group_exit+0x90/0xc0)
<4>[    7.293518] [<c046f0ec>] (do_group_exit+0x90/0xc0) from [<c047bd40>] (get_signal_to_deliver+0x428/0x470)
<4>[    7.303027] [<c047bd40>] (get_signal_to_deliver+0x428/0x470) from [<c043dc14>] (do_signal+0xb0/0x530)
<4>[    7.312271] [<c043dc14>] (do_signal+0xb0/0x530) from [<c043e5c8>] (do_notify_resume+0x18/0x38)
<4>[    7.320896] [<c043e5c8>] (do_notify_resume+0x18/0x38) from [<c043b898>] (work_pending+0x24/0x28)
<2>[    7.329703] CPU1: stopping
<4>[    7.332428] [<c0440ac4>] (unwind_backtrace+0x0/0xe0) from [<c0436370>] (do_IPI+0xfc/0x1d4)
<4>[    7.340708] [<c0436370>] (do_IPI+0xfc/0x1d4) from [<c043b348>] (__irq_svc+0x48/0xe0)
<4>[    7.348458] Exception stack(0xdcc57f58 to 0xdcc57fa0)
<4>[    7.353515] 7f40:                                                       dcc57fa0 3b9aca00
<4>[    7.361703] 7f60: b4ccef31 00000001 b0dba6ba 00000001 000003ff feb3cfff 00000000 414fc091
<4>[    7.369891] 7f80: 00000001 00000000 00000006 dcc57fa0 c048ead0 c044dc40 80000013 ffffffff
<4>[    7.378082] [<c043b348>] (__irq_svc+0x48/0xe0) from [<c044dc40>] (rk30_idle+0x44/0x74)
<4>[    7.386015] [<c044dc40>] (rk30_idle+0x44/0x74) from [<c06ebdf4>] (cpuidle_idle_call+0x14c/0x250)
<4>[    7.394815] [<c06ebdf4>] (cpuidle_idle_call+0x14c/0x250) from [<c043c580>] (cpu_idle+0x84/0xe8)
<4>[    7.403526] [<c043c580>] (cpu_idle+0x84/0xe8) from [<608a61d4>] (0x608a61d4)
<4>[    7.410591] fed00000: 0000204c 00001441 00000000 00000000
<4>[    7.416006] fed00010: 00002042 00001441 00000001 00000000
<4>[    7.421445] fed00020: 00001050 00001443 00000000 00000000
<4>[    7.426851] fed00030: 00001020 00001441 00000000 00000000
<4>[    7.432266] fed00040: 00001111 00002300 00003133 00008003
<4>[    7.437672] fed00050: 00000100 00000200 00000200 0bb8ea60
<4>[    7.443085] fed00060: 01885091 0bb8ea60 0bb8ea60 00002103
<4>[    7.448491] fed00070: 0000274f 000003df 0000023f 0000023f
<4>[    7.453904] fed00080: 0000023f 00000200 0bb8ea60 0bb8ea60
<4>[    7.459309] fed00090: 0bb8ea60 0bb8ea60 00000b00 00000900
<4>[    7.464723] fed000a0: ff000300 00007700 0000070f 00000000
<4>[    7.470129] fed000b0: 0000ff01 0000ff01 0000003f 00000100
<4>[    7.475541] fed000c0: 00008282 00008181 00000002 00000105
<4>[    7.480946] fed000d0: 00000140 00003f80 00004000 00007bef
<4>[    7.486358] fed000e0: 00000000 00000004 00002c33 00008101
<4>[    7.491770] fed000f0: 00000003 000001a0 00000000 00000000
<4>[    7.497175] fed00100: 00000000 00000000 00000000 00000000
<4>[    7.502587] fed00110: 00000000 00000000 00000000 00000000
<4>[    7.507992] fed00120: 00000000 00000000 00000000 00000000
<4>[    7.513404] fed00130: 00000000 00000000 00000000 00000000
<4>[    7.518809] fed00140: 3a980064 00000000 00000000 00000000
<0>[    7.524222] Rebooting in 1 seconds..
`

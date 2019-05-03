Write-Host;
Write-Host Preparing environment to run MAFFT on Windows.
Write-Host This may take a while, if real-time scanning by anti-virus software is on.

Set-Item Env:Path "/usr/bin;$Env:Path"
Set-Item Env:MAFFT_BINARIES "/usr/lib/mafft"
Set-Item Env:TMPDIR "$Env:TMP"
Set-Item Env:MAFFT_TMPDIR "$Env:TMP"
Set-Item Env:mafft_working_dir "$PWD"

#Set-Item Env:TMPDIR "/tmp"
#Set-Item Env:MAFFT_TMPDIR "/tmp"
# If you do not have write permission for standard temporary folder
# (typically C:\Users\username\AppData\Local\Temp\), then
# uncomment (remove #) the above two lines to use an alternative 
# temporary folder.

#$ROOTDIR=$PSScriptRoot # not supported by powershell versions <= 2
$ROOTDIR=Split-Path -Parent $MyInvocation.MyCommand.Path
$ROOTDIRWBS=$ROOTDIR.Replace('\\', '\\\')
$proc = Start-Process -Wait -NoNewWindow -PassThru -FilePath "$ROOTDIR\usr\bin\bash.exe" -ArgumentList "'$ROOTDIRWBS\usr\bin\mafft' $args"
exit $proc.ExitCode

# SIG # Begin signature block
# MIIcVAYJKoZIhvcNAQcCoIIcRTCCHEECAQExCzAJBgUrDgMCGgUAMGkGCisGAQQB
# gjcCAQSgWzBZMDQGCisGAQQBgjcCAR4wJgIDAQAABBAfzDtgWUsITrck0sYpfvNR
# AgEAAgEAAgEAAgEAAgEAMCEwCQYFKw4DAhoFAAQUf69MLIEdutESQerVct2FA1hy
# 8cGgggmVMIIElDCCA3ygAwIBAgIOSBtqBybS6D8mAtSCWs0wDQYJKoZIhvcNAQEL
# BQAwTDEgMB4GA1UECxMXR2xvYmFsU2lnbiBSb290IENBIC0gUjMxEzARBgNVBAoT
# Ckdsb2JhbFNpZ24xEzARBgNVBAMTCkdsb2JhbFNpZ24wHhcNMTYwNjE1MDAwMDAw
# WhcNMjQwNjE1MDAwMDAwWjBaMQswCQYDVQQGEwJCRTEZMBcGA1UEChMQR2xvYmFs
# U2lnbiBudi1zYTEwMC4GA1UEAxMnR2xvYmFsU2lnbiBDb2RlU2lnbmluZyBDQSAt
# IFNIQTI1NiAtIEczMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAjYVV
# I6kfU6/J7TbCKbVu2PlC9SGLh/BDoS/AP5fjGEfUlk6Iq8Zj6bZJFYXx2Zt7G/3Y
# SsxtToZAF817ukcotdYUQAyG7h5LM/MsVe4hjNq2wf6wTjquUZ+lFOMQ5pPK+vld
# sZCH7/g1LfyiXCbuexWLH9nDoZc1QbMw/XITrZGXOs5ynQYKdTwfmOPLGC+MnwhK
# kQrZ2TXZg5J2Yl7fg67k1gFOzPM8cGFYNx8U42qgr2v02dJsLBkwXaBvUt/RnMng
# Ddl1EWWW2UO0p5A5rkccVMuxlW4l3o7xEhzw127nFE2zGmXWhEpX7gSvYjjFEJtD
# jlK4PrauniyX/4507wIDAQABo4IBZDCCAWAwDgYDVR0PAQH/BAQDAgEGMB0GA1Ud
# JQQWMBQGCCsGAQUFBwMDBggrBgEFBQcDCTASBgNVHRMBAf8ECDAGAQH/AgEAMB0G
# A1UdDgQWBBQPOueslJF0LZYCc4OtnC5JPxmqVDAfBgNVHSMEGDAWgBSP8Et/qC5F
# JK5NUPpjmove4t0bvDA+BggrBgEFBQcBAQQyMDAwLgYIKwYBBQUHMAGGImh0dHA6
# Ly9vY3NwMi5nbG9iYWxzaWduLmNvbS9yb290cjMwNgYDVR0fBC8wLTAroCmgJ4Yl
# aHR0cDovL2NybC5nbG9iYWxzaWduLmNvbS9yb290LXIzLmNybDBjBgNVHSAEXDBa
# MAsGCSsGAQQBoDIBMjAIBgZngQwBBAEwQQYJKwYBBAGgMgFfMDQwMgYIKwYBBQUH
# AgEWJmh0dHBzOi8vd3d3Lmdsb2JhbHNpZ24uY29tL3JlcG9zaXRvcnkvMA0GCSqG
# SIb3DQEBCwUAA4IBAQAVhCgM7aHDGYLbYydB18xjfda8zzabz9JdTAKLWBoWCHqx
# mJl/2DOKXJ5iCprqkMLFYwQL6IdYBgAHglnDqJQy2eAUTaDVI+DH3brwaeJKRWUt
# TUmQeGYyDrBowLCIsI7tXAb4XBBIPyNzujtThFKAzfCzFcgRCosFeEZZCNS+t/9L
# 9ZxqTJx2ohGFRYzUN+5Q3eEzNKmhHzoL8VZEim+zM9CxjtEMYAfuMsLwJG+/r/uB
# AXZnxKPo4KvcM1Uo42dHPOtqpN+U6fSmwIHRUphRptYCtzzqSu/QumXSN4NTS35n
# fIxA9gccsK8EBtz4bEaIcpzrTp3DsLlUo7lOl8oUMIIE+TCCA+GgAwIBAgIMFc8a
# jh5+hrY2+89QMA0GCSqGSIb3DQEBCwUAMFoxCzAJBgNVBAYTAkJFMRkwFwYDVQQK
# ExBHbG9iYWxTaWduIG52LXNhMTAwLgYDVQQDEydHbG9iYWxTaWduIENvZGVTaWdu
# aW5nIENBIC0gU0hBMjU2IC0gRzMwHhcNMTgwNjEyMDcyOTM2WhcNMTkwNzE2MDU0
# MDA3WjBzMQswCQYDVQQGEwJKUDEOMAwGA1UECBMFT3Nha2ExDjAMBgNVBAcTBVN1
# aXRhMRkwFwYDVQQKExBPc2FrYSBVbml2ZXJzaXR5MQ4wDAYDVQQLEwVJRlJlQzEZ
# MBcGA1UEAxMQT3Nha2EgVW5pdmVyc2l0eTCCASIwDQYJKoZIhvcNAQEBBQADggEP
# ADCCAQoCggEBALewrK03sLqADU9LkvAwx8r28L2zo+qUROEz9oNZW6xYPylSzEYp
# 7RRAYbwQA6rlIHtW8A8/+SjA4fNwcy9qGBiu1OZJmeX4sLZzr48rUFRKyZqfraIo
# ILT8GVNZBMW39K78ZIP+1eTXjcBXyX2Ri2BIEH0fgtYO/q9Hz3NLZkWv2InxZvkk
# Xh8khFAPwDSI6IEy5K972kyfp5liilDzBVBQmYve3O8lMNTpg6PseWxruBkr0kQs
# FXzHLJ+tNVQGRHPF81xMGD8YPhI1IySUgDZXqU98u+EB5uBfXNyMgv9PuTy/8zx/
# mlAMbVMvwWBL9y+fcZIfYHuKI/swraWHt7kCAwEAAaOCAaQwggGgMA4GA1UdDwEB
# /wQEAwIHgDCBlAYIKwYBBQUHAQEEgYcwgYQwSAYIKwYBBQUHMAKGPGh0dHA6Ly9z
# ZWN1cmUuZ2xvYmFsc2lnbi5jb20vY2FjZXJ0L2dzY29kZXNpZ25zaGEyZzNvY3Nw
# LmNydDA4BggrBgEFBQcwAYYsaHR0cDovL29jc3AyLmdsb2JhbHNpZ24uY29tL2dz
# Y29kZXNpZ25zaGEyZzMwVgYDVR0gBE8wTTBBBgkrBgEEAaAyATIwNDAyBggrBgEF
# BQcCARYmaHR0cHM6Ly93d3cuZ2xvYmFsc2lnbi5jb20vcmVwb3NpdG9yeS8wCAYG
# Z4EMAQQBMAkGA1UdEwQCMAAwPwYDVR0fBDgwNjA0oDKgMIYuaHR0cDovL2NybC5n
# bG9iYWxzaWduLmNvbS9nc2NvZGVzaWduc2hhMmczLmNybDATBgNVHSUEDDAKBggr
# BgEFBQcDAzAdBgNVHQ4EFgQUz880T9hEerWAjdohhwXpJTk1A2swHwYDVR0jBBgw
# FoAUDzrnrJSRdC2WAnODrZwuST8ZqlQwDQYJKoZIhvcNAQELBQADggEBAE5mwpcK
# Xp/0Ira6wn74jx3CK70qtlC0q++Dfmc8TJvkfzWZQgnbAeLFwsDVcGzDAQ+LUl/Y
# TzgBWR4loyv2L4NWG02z9jpwoKnKYvw4+3y2oqSWqUprUqSO0cl1WO7YRfgFLQ8Q
# udFWHvdrsFcCowDKlHAvN0q5nfLR7imclVhHwTAn0ydXpvDYcsqZSu4WSSTi0VBk
# Li32Ch7xANr6kTKoP3kSc4qo/GWDpRuQ7kTym2B17p9kdylwsAYTtlYAL3cqd5a8
# Z8jFHECC2n4yNN7H/ZkyG/g/wpbeM9Gh1plPed+8CtzFB3tdYXghRezmCOILLlb5
# T4SfajNQvchmuGAxghIpMIISJQIBATBqMFoxCzAJBgNVBAYTAkJFMRkwFwYDVQQK
# ExBHbG9iYWxTaWduIG52LXNhMTAwLgYDVQQDEydHbG9iYWxTaWduIENvZGVTaWdu
# aW5nIENBIC0gU0hBMjU2IC0gRzMCDBXPGo4efoa2NvvPUDAJBgUrDgMCGgUAoHAw
# EAYKKwYBBAGCNwIBDDECMAAwGQYJKoZIhvcNAQkDMQwGCisGAQQBgjcCAQQwHAYK
# KwYBBAGCNwIBCzEOMAwGCisGAQQBgjcCARUwIwYJKoZIhvcNAQkEMRYEFAvJwI4A
# Jv+6brOrQ521UBPG96K+MA0GCSqGSIb3DQEBAQUABIIBABeLJdNkxMPmDIMXzVPx
# 42J1XUxcH3W3r5rmN39hwb3ZElgh1Zv1gDA7m/qGJRnalukAFreohK5bCaNGN0h9
# r0dYKF5XEZWJFsBEqbVauZ1cUbj1/bPeCqtbBBBRwiIdVSxk8ll9sK4yjX/iQS8M
# gysP33GdSoi2VkOL7AawzOroB8lgLW+EALX9MZEQrBdwtuP1g1iFVwQ1VxSzLHoZ
# gnppkIJc+pSyn0gFWw2abKCEYeNM9Bu0O8cQVgkNxTzFAlxSLZ9mPNU53/jA6tb4
# aRizA+EC7E+L2silro5jDsRYjSS8JkwHu0RcyXqMsi89GW3o1WboT75WaL898EBv
# ZgChghAiMIIQHgYKKwYBBAGCNwMDATGCEA4wghAKBgkqhkiG9w0BBwKggg/7MIIP
# 9wIBAzEPMA0GCWCGSAFlAwQCAQUAMIHlBgsqhkiG9w0BCRABBKCB1QSB0jCBzwIB
# AQYJKwYBBAGgMgIDMDEwDQYJYIZIAWUDBAIBBQAEIO6/+Cbf7WctTRrMZ/1Z03hY
# VtQifpqc3kbRJRfMHND8Ag4BWfKEUw0AAAAAAMQCxRgSMjAxODA3MjMwMjIxMjku
# MzJaMAMCAQGgY6RhMF8xCzAJBgNVBAYTAkpQMRwwGgYDVQQKExNHTU8gR2xvYmFs
# U2lnbiBLLksuMTIwMAYDVQQDEylHbG9iYWxTaWduIFRTQSBmb3IgQWR2YW5jZWQg
# LSBHMyAtIDAwMi0wMaCCDGowggTqMIID0qADAgECAgwnf1jooFUBqIn8vPUwDQYJ
# KoZIhvcNAQELBQAwWzELMAkGA1UEBhMCQkUxGTAXBgNVBAoTEEdsb2JhbFNpZ24g
# bnYtc2ExMTAvBgNVBAMTKEdsb2JhbFNpZ24gVGltZXN0YW1waW5nIENBIC0gU0hB
# MjU2IC0gRzIwHhcNMTgwMjI4MTAwMDAwWhcNMjkwMzE4MTAwMDAwWjBfMQswCQYD
# VQQGEwJKUDEcMBoGA1UEChMTR01PIEdsb2JhbFNpZ24gSy5LLjEyMDAGA1UEAxMp
# R2xvYmFsU2lnbiBUU0EgZm9yIEFkdmFuY2VkIC0gRzMgLSAwMDItMDEwggEiMA0G
# CSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQCrIXtm7Kr0+/t52LoXDyZgvELrTfkH
# 9x/xHvUo38si2Y91SSP0Wp5I1sCajOR2pnbrDyVA3LEkuGrgfIedljwV5JTFCop4
# HYXkfAklr8+j/Cw2rZIjCIp63ITA96lsAL57CGr+LzdV4gux41HMMkC9K5TPWIYu
# S0QqS+fsUhMY7uV2/5k2qMTC/fyrTsFfMEdSCCT8hI+pg9zgodEYwh//l925aYhy
# guZ7s0A7POu+Cx4v+YCFQ4tt6cRqP4fgQeDU5gzf0IzWDS8DRloD1ALrJid9QhV8
# Ek4Vvc1/61/vKHi28pI28qu55UC5JbFXMzMdUMvNCM3nZKry4oydTqcpAgMBAAGj
# ggGoMIIBpDAOBgNVHQ8BAf8EBAMCB4AwTAYDVR0gBEUwQzBBBgkrBgEEAaAyAR4w
# NDAyBggrBgEFBQcCARYmaHR0cHM6Ly93d3cuZ2xvYmFsc2lnbi5jb20vcmVwb3Np
# dG9yeS8wCQYDVR0TBAIwADAWBgNVHSUBAf8EDDAKBggrBgEFBQcDCDBGBgNVHR8E
# PzA9MDugOaA3hjVodHRwOi8vY3JsLmdsb2JhbHNpZ24uY29tL2dzL2dzdGltZXN0
# YW1waW5nc2hhMmcyLmNybDCBmAYIKwYBBQUHAQEEgYswgYgwSAYIKwYBBQUHMAKG
# PGh0dHA6Ly9zZWN1cmUuZ2xvYmFsc2lnbi5jb20vY2FjZXJ0L2dzdGltZXN0YW1w
# aW5nc2hhMmcyLmNydDA8BggrBgEFBQcwAYYwaHR0cDovL29jc3AyLmdsb2JhbHNp
# Z24uY29tL2dzdGltZXN0YW1waW5nc2hhMmcyMB0GA1UdDgQWBBSkwaiT8B4sZMuK
# L2C63agc3bxTRDAfBgNVHSMEGDAWgBSSIadKlV1ksJu0HuYAN0fmnUErTDANBgkq
# hkiG9w0BAQsFAAOCAQEASjbncSOYIYiSdvqyEBvNArFVY+jM9EAhswbBtPYlWVdD
# gjuclJiOnq1TTWRuMO7bl1kay46ZYXDaFgGHVAv1CBqjxkBvdNN0YUNhApxTtr2S
# ca1xO+N+mLqSpGZdcR7fwcZjRnfBUxRDwXlKNsigIVkA+8Zd5YevtOw/YYjPGB3V
# AxPvxdzh9a4i8G9b6LnENQh4TsOSjl5ziMxcrB8mj1ZIeBfC6Je5CskKyQu7Ji3p
# gQ/eQvw0OVbTzMoVAJXDgMWnk0yZVgcAFqvJLav9ooa9O0yaZT0+OxC9Q/2Tunca
# EnFB8bgha7FVkAenDONc7bxU6HWnCuEKss7vPXzsAzCCBBUwggL9oAMCAQICCwQA
# AAAAATGJxlAEMA0GCSqGSIb3DQEBCwUAMEwxIDAeBgNVBAsTF0dsb2JhbFNpZ24g
# Um9vdCBDQSAtIFIzMRMwEQYDVQQKEwpHbG9iYWxTaWduMRMwEQYDVQQDEwpHbG9i
# YWxTaWduMB4XDTExMDgwMjEwMDAwMFoXDTI5MDMyOTEwMDAwMFowWzELMAkGA1UE
# BhMCQkUxGTAXBgNVBAoTEEdsb2JhbFNpZ24gbnYtc2ExMTAvBgNVBAMTKEdsb2Jh
# bFNpZ24gVGltZXN0YW1waW5nIENBIC0gU0hBMjU2IC0gRzIwggEiMA0GCSqGSIb3
# DQEBAQUAA4IBDwAwggEKAoIBAQCqm47DqxFRJQG2lpTiT9jBCPZGI9lFxZWXW6sa
# v9JsV8kzBh+gD8Y8flNIer+dh56v7sOMR+FC7OPjoUpsDBfEpsG5zVvxHkSJjv4L
# 3iFYE+5NyMVnCxyys/E0dpGiywdtN8WgRyYCFaSQkal5ntfrV50rfCLYFNfxBx54
# IjZrd3mvr/l/jk7htQgx/ertS3FijCPxAzmPRHm2dgNXnq0vCEbc0oy89I50zsho
# aVF2EYsPXSRbGVQ9JsxAjYInG1kgfVn2k4CO+Co4/WugQGUfV3bMW44ETyyo24RQ
# E0/G3Iu5+N1pTIjrnHswJvx6WLtZvBRykoFXt3bJ2IAKgG4JAgMBAAGjgegwgeUw
# DgYDVR0PAQH/BAQDAgEGMBIGA1UdEwEB/wQIMAYBAf8CAQAwHQYDVR0OBBYEFJIh
# p0qVXWSwm7Qe5gA3R+adQStMMEcGA1UdIARAMD4wPAYEVR0gADA0MDIGCCsGAQUF
# BwIBFiZodHRwczovL3d3dy5nbG9iYWxzaWduLmNvbS9yZXBvc2l0b3J5LzA2BgNV
# HR8ELzAtMCugKaAnhiVodHRwOi8vY3JsLmdsb2JhbHNpZ24ubmV0L3Jvb3QtcjMu
# Y3JsMB8GA1UdIwQYMBaAFI/wS3+oLkUkrk1Q+mOai97i3Ru8MA0GCSqGSIb3DQEB
# CwUAA4IBAQAEVoJKfNDOyb82ZtG+NZ6TbJfoBs4xGFn5bEFfgC7AQiW4GMf81LE3
# xGigzyhqA3RLY5eFd2E71y/j9b0zopJ9ER+eimzvLLD0Yo02c9EWNvG8Xuy0gJh4
# /NJ2eejhIZTgH8Si4apn27Occ+VAIs85ztvmd5Wnu7LL9hmGnZ/I1JgFsnFvTnWu
# 8T1kajteTkamKl0IkvGj8x10v2INI4xcKjiV0sDVzc+I2h8otbqBaWQqtaai1XOv
# 3EbbBK6R127FmLrUR8RWdIBHeFiMvu8r/exsv9GU979Q4HvgkP0gGHgYIl0ILowc
# oJfzHZl9o52R0wZETgRuehwg4zbwtlC5MIIDXzCCAkegAwIBAgILBAAAAAABIVhT
# CKIwDQYJKoZIhvcNAQELBQAwTDEgMB4GA1UECxMXR2xvYmFsU2lnbiBSb290IENB
# IC0gUjMxEzARBgNVBAoTCkdsb2JhbFNpZ24xEzARBgNVBAMTCkdsb2JhbFNpZ24w
# HhcNMDkwMzE4MTAwMDAwWhcNMjkwMzE4MTAwMDAwWjBMMSAwHgYDVQQLExdHbG9i
# YWxTaWduIFJvb3QgQ0EgLSBSMzETMBEGA1UEChMKR2xvYmFsU2lnbjETMBEGA1UE
# AxMKR2xvYmFsU2lnbjCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAMwl
# dpB5BngiFvXAg7aEyiie/QV2EcWtiHL8RgJDx7KKnQRfJMsuS+FggkbhUqsMgUdw
# bN1k0ev1LKMPgj0MK66X17YUhhB5uzsTgHeMCOFJ0mpiLx9e+pZo34knlTifBtc+
# ycsmWQ1z3rDI6SYOgxXG71uL0gRgykmmKPZpO/bLyCiR5Z2KYVc3rHQU3HTgOu5y
# Ly6c+9C7v/U9AOEGM+iCK65TpjoWc4zdQQ4gOsC0p6Hpsk+QLjJg6VfLuQSSaGjl
# OCZgdbKfd/+RFO+uIEn8rUAVSNECMWEZXriX7613t2Saer9fwRPvm2L7DWzgVGkW
# qQPabumDk3F2xmmFghcCAwEAAaNCMEAwDgYDVR0PAQH/BAQDAgEGMA8GA1UdEwEB
# /wQFMAMBAf8wHQYDVR0OBBYEFI/wS3+oLkUkrk1Q+mOai97i3Ru8MA0GCSqGSIb3
# DQEBCwUAA4IBAQBLQNvAUKr+yAzv95ZURUm7lgAJQayzE4aGKAczymvmdLm6AC2u
# pArT9fHxD4q/c2dKg8dEe3jgr25sbwMpjjM5RcOO5LlXbKr8EpbsU8Yt5CRsuZRj
# +9xTaGdWPoO4zzUhw8lo/s7awlOqzJCK6fBdRoyV3XpYKBovHd7NADdBj+1EbddT
# KJd+82cEHhXXipa0095MJ6RMG3NzdvQXmcIfeg7jLQitChws/zyrVQ4PkX4268NX
# Sb7hLi18YIvDQVETI53O9zJrlAGomecsMx86OyXShkDOOyyGeMlhLxS67ttVb9+E
# 7gUJTb0o2HLO02JQZR7rkpeDMdmztcpHWD9fMYICiTCCAoUCAQEwazBbMQswCQYD
# VQQGEwJCRTEZMBcGA1UEChMQR2xvYmFsU2lnbiBudi1zYTExMC8GA1UEAxMoR2xv
# YmFsU2lnbiBUaW1lc3RhbXBpbmcgQ0EgLSBTSEEyNTYgLSBHMgIMJ39Y6KBVAaiJ
# /Lz1MA0GCWCGSAFlAwQCAQUAoIHwMBoGCSqGSIb3DQEJAzENBgsqhkiG9w0BCRAB
# BDAvBgkqhkiG9w0BCQQxIgQgD44O3ONh9cS0P4cKXaVHLghIxTSrbDwZ7JmMn6Mn
# zNUwgaAGCyqGSIb3DQEJEAIMMYGQMIGNMIGKMIGHBBQGRSQFx2WClzUBWHuagHE+
# oluyBzBvMF+kXTBbMQswCQYDVQQGEwJCRTEZMBcGA1UEChMQR2xvYmFsU2lnbiBu
# di1zYTExMC8GA1UEAxMoR2xvYmFsU2lnbiBUaW1lc3RhbXBpbmcgQ0EgLSBTSEEy
# NTYgLSBHMgIMJ39Y6KBVAaiJ/Lz1MA0GCSqGSIb3DQEBAQUABIIBAA4XgRQB9X6L
# SgjyN/9Lf5Wyld9kue8HW8AE2AOYZzCgv7KdNIB7VOL+TdS3JJP4RpqxbMlr2tpO
# 9JgsV6eFKMpSKcUgnJPgPRMxu/u3w4l+/mpjutFXpDc3dyP5DGw0185j3LXkj9Ey
# pDROlchYaB3mTVoGOohqy3tBILu0uDoEafG4y08CBn315n2QaG1CLb9d6rhcEj7W
# knmKz5cNpDt3kPxCga2on4CZbX9OBnq7Fem3Ll6ecUH6VHmbLS/mhkVulfjQxQ17
# vBNbXxESheAKCRjCYf5WxncPEcvRWmh6FOh/mmTWj54ITQnzdmqokVJ8AnU0BwwI
# Ccdihoo5ngo=
# SIG # End signature block
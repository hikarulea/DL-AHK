;----------------------------------------------------------------------
;热字串，用两个双冒号包围用来触发的缩写，格式“::字符::”
;    如：::btw::by the way
; 更详细说明在：http://ahkcn.sourceforge.net/docs/Hotstrings.htm
;----------------------------------------------------------------------
;快捷键对应说明：
;-- shift:+
;-- alt  :!
;-- ctrl :^
;-- win  :#
;-------------------- 
;快捷键缩写说明：
;-- u:URL
;-- v:VPN
;-- f:Format
;-- s:Server
;----------------------------------------------------------------------
;----------- Date & Time -----------
;--------- 快速输入当前系统日期
::dddf::
{
  FormatTime, CurrentDate,, yyyy/MM/dd
  SendInput %CurrentDate%
  return
}
::ddd::
{
  FormatTime, CurrentDate,, yyyyMMdd
  SendInput %CurrentDate%
  return
}
;--------- 快速输入当前系统日期及时间
::dtf::
{
  FormatTime, CurrentDateTime,, yyyy/MM/dd HH:mm  ; It(M/d/yyyy h:mm tt) will look like 9/1/2005 3:53 PM
  SendInput %CurrentDateTime%
  return
}
;--------- 快速输入当前系统时间
::tttf::
{
  FormatTime, CurrentTime,, HH:mm 
  SendInput %CurrentTime%
  return
}
;----------- URL -----------
::ug::www.google.com
;----------- Template ----------- "t" = Template，以下是一个多行输入的例子
::t--::
{
  Send {Enter}{Enter}{Enter}
  SendInput ---
  Send {Enter}{Enter}
  SendInput ---
  Send {Up}
  return
}
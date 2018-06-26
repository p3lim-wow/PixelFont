-- I really wish we had relative paths for font/texture files.
-- That way, this addon could be embedded as a library.

local fontName = ...
local colors = {
	Title = NORMAL_FONT_COLOR,
	Disabled = DISABLED_FONT_COLOR,
	Yellow = NORMAL_FONT_COLOR,
}

local fontNormalName = fontName .. 'Normal'
for colorName, color in next, colors do
	local font = CreateFont(fontName .. colorName)
	font:CopyFontObject(fontNormalName)
	font:SetTextColor(color:GetRGB())
end

if(LibStub) then
	-- register with SharedMedia
	local LSM = LibStub('LibSharedMedia-3.0', true)
	if(LSM) then
		LSM:Register(LSM.MediaType.FONT, 'Semplice', [[Interface\AddOns\PixelFont\fonts\semplice.ttf]])
		LSM:Register(LSM.MediaType.FONT, 'Homespun', [[Interface\AddOns\PixelFont\fonts\homespun.ttf]])
	end
end

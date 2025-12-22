#
# Copyright (C) 2025 Salvo Giangreco
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.
#

# MonsterROM configuration file for Exynos devices (essi/essi_64)

# Galaxy S23 FE (One UI 8.5)
SOURCE_CODENAME="r11s"
SOURCE_FIRMWARE="SM-S711B/EUX/351273090515683"
SOURCE_EXTRA_FIRMWARES=()
SOURCE_API_LEVEL=36.1
SOURCE_PRODUCT_FIRST_API_LEVEL=33
SOURCE_VNDK_VERSION="33"
SOURCE_HAS_SYSTEM_EXT=false
SOURCE_SUPER_GROUP_NAME="group_basic"

# SEC Product Feature
TARGET_AUTO_BRIGHTNESS_TYPE="5"
TARGET_DVFS_CONFIG_NAME="dvfs_policy_s5e9925_xx"
TARGET_NFC_CHIP_VENDOR="NXP"
TARGET_FP_SENSOR_CONFIG="google_touch_display_ultrasonic"
TARGET_HAS_MASS_CAMERA_APP=false
TARGET_HAS_QHD_DISPLAY=true
TARGET_HFR_MODE="3"
TARGET_HFR_SUPPORTED_REFRESH_RATE="24,10,60,48,30,96,120"
TARGET_HFR_DEFAULT_REFRESH_RATE="120"
TARGET_DISPLAY_CUTOUT_TYPE="center"
TARGET_HFR_SEAMLESS_BRT="35"
TARGET_HFR_SEAMLESS_LUX="40"
TARGET_IS_ESIM_SUPPORTED=true
TARGET_SUPPORT_WIFI_7=false
TARGET_SUPPORT_HOTSPOT_DUALAP=false
TARGET_SUPPORT_HOTSPOT_WPA3=true
TARGET_SUPPORT_HOTSPOT_6GHZ=true
TARGET_SUPPORT_HOTSPOT_WIFI_6=true
TARGET_SUPPORT_HOTSPOT_ENHANCED_OPEN=false
TARGET_HAS_HW_MDNIE=true
TARGET_MDNIE_SUPPORTED_MODES="65303"
TARGET_MDNIE_WEAKNESS_SOLUTION_FUNCTION="3"
TARGET_AUDIO_SUPPORT_ACH_RINGTONE=true
TARGET_AUDIO_SUPPORT_VIRTUAL_VIBRATION=true


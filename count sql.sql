﻿select Name,Price from Info where Id IN (SELECT ItemID from CartTable where Username='mrmezan0');
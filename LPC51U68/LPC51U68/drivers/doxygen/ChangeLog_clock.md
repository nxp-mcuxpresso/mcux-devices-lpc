# CLOCK

## [2.4.2]

- Improvements
  - Added lost comments for some enumerations.

## [2.4.1]

- Bug Fixes.
  - Fixed MISRA C-2012 rule 10.1, rule 10.8, rule 12.2, rule 14.4 and so on.

## [2.4.0]

- New feature:
  - Moved SDK_DelayAtLeastUs function from clock driver to common driver.

## [2.3.0]

- Replace the delay function

## [2.2.1]

- Support 150Mhz core frequency

## [2.2.0]

- New Feature:
  - add new API CLOCK_GetAdcClkFreq to get adc clock frequence.

## [2.1.0]

- New feature
  - Adding new API CLOCK_DelayAtLeastUs() to implemente a delay function in unit of microsecond.
- Bug Fix
  - Fix the bug in function CLOCK_GetPllConfig() to refine the cache feature.

## [2.0.4]

- Bug Fix:
  - Fix C++ build errors in CLOCK_GetClockAttachId() and CLOCK_AttachClk().

## [2.0.3]

- Bug Fix:
  - Fix attach incorrect attach_id.

## [2.0.2]

- New Feature:
  - add get actual clock attach id api to allow users to obtain the actual
    clock source in target register.
- Bug Fix:
  - The attach clock and get actual clock attach id apis should check
    combination of two clock source.
- Optimization:
  - Make the judgement statments more clear.
  - Strengthen the compatibility of clock attatch id.
  - Remove some unmeaningful definitions and add some useful ones to
    enhance readability.

## [2.0.1]

- some minor fixes.

## [2.0.0]

- initial version.

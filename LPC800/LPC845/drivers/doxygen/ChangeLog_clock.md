# CLOCK

## [2.3.4]

- Improvements
  - Added CLOCK_SetFLASHAccessCyclesForFreq.

## [2.3.3]

- Improvements
  - Added lost comments for some enumerations.

## [2.3.2]

- Improvements
  - Used "offsetof" macro to get the offset of the structure element from the
    beginning of the structure.
- Bug Fixes
  - Fixed violations of MISRA C-2012 rule 11.1, rule 11.3.

## [2.3.1]

- Bug Fixes
  - Fixed MISRA C-2012 rule 10.1,rule 10.4,rule 10.8.
  - Fixed IAR warning Pa082 for the clock driver.

## [2.3.0]

- New feature:
  - Moved SDK_DelayAtLeastUs function from clock driver to common driver.

## [2.2.0]

- Replace the delay function

## [2.1.0]

- New feature
  - Adding new API CLOCK_DelayAtLeastUs() to implemente a delay fucntion which allow
    users set delay in unit of microsecond.

## [2.0.3]

- New Features
  - Added an API to get uart clock frequency.
  - Added an API to set fractional multiplier value.

## [2.0.2]

- some minor fixes.

## [2.0.0]

- initial version.

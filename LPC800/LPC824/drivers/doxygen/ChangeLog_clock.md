# CLOCK

## [2.4.4]

- Bug Fixes
  - Fixed CLOCK_GetUartClkFreq overflow issue.

## [2.4.3]

- Improvements
  - Added lost comments for some enumerations.

## [2.4.2]

- New feature:
  - Add CLOCK_GetUartnClkFreq() API.
- Bug Fixes
  - Fixed the operands out of bounds in CLOCK_GetUartClkFreq().

## [2.3.2]

- Improvements
  - Used "offsetof" macro to get the offset of the structure element from the
    beginning of the structure.

## [2.3.1]

- Bug Fixes
  - Fixed MISRA C-2012 rule 10.1,rule 10.3 and rule 10.4.
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

## [2.0.4]

- Add value check in CLOCK_InitSystemPll() and CLOCK_SetUARTFRGClkFreq() to
  make sure divisor in the division expression is not 0.

## [2.0.3]

- add api to get uart clock frequency.
- add api to set fractional multiplier value.

## [2.0.2]

- some minor fixes.

## [2.0.0]

- initial version.

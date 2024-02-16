# Counter

## Purpose and goals of the application ##

In everyday life, we often have to count something - for example, the number of books in our home library. In order not to accidentally get lost and take into account each book, it would be convenient to just press the button.

Application goals:

- increasing the counter value by 1 when pressing the "plus" button;
- decreasing the counter value by 1 when pressing the "minus" button, while the counter value should not fall below zero;
- reseting the counter value when the "reset" button is pressed;
- keeping track of the history of changing the counter value;

## Description of the application ##
The app shows three buttons:
red color with the icon "+" — to increase
the blue color with the icon "-" — to decrease the value of the counter
gray with the "reset" icon — to reset the counter value.
And the UITextView text field, which shows the history of changing the counter value in the following format:
at the start of the application — "Change history:"
when successfully pressing the "+" or "-" button — "[date and time]: value changed to -1/+1"
when reset: — "[date and time]: value reset"
when trying to decrease the counter value below 0 — "[date and time]: attempt to decrease the counter value below 0".

## Technology stack ##
- Swift, UIKit
- DateFormatter
- UITextView
- UILabel, UIButton

## Installation ##
Installation and launch via Xcode.

Minimum system version is iOS 13.0.

## Recording screens demonstrating work ##

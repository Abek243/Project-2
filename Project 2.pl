#Assignment: Project 2
#Author: Gavin Rostar
#Version: 09.29.2015
#Purpose: To compute the price of a sign a customer orders

use 5.14.1;
use warnings;

my ($coloredChar, $continueInt, $wood, $charNum, $gold, $orderNum, $total);
my ($name, $custID);
sub main {
     use constant YES => 1;
     setContinueInt();
     system("cls");
     if ($continueInt == YES) {
          setName();
          setCustID();
          setcolorChar();
          setWood();
          setCharnum();
          setGold();
          setOrdernum();
          calculateTotal();
          printTotal();
          main();
     }
     printBye();
}

main();

sub setContinueInt {
     if (defined $continueInt) {
          print "Do you want to continue (0=no, 1=yes)? ";
          chomp ($continueInt = <STDIN>);
     } else {
          $continueInt = 1;
     }
}

sub setName {
     print "\nWhat's your name?: ";
     chomp ($name = <STDIN>);
}

sub setCustID {
     print "\nEnter your customer ID: ";
     chomp ($custID = <STDIN>);
}

sub setWood {
     print "\nIs your sign made of Oak? (0=no, 1=yes) ";
     chomp ($wood = <STDIN>);
}

sub setCharnum {
     print "\nHow many characters does your sign have? ";
     chomp ($charNum = <STDIN>);
}

sub setGold {
     print "\nDoes your sign have gold letters? (0=no, 1=yes) ";
     chomp ($gold = <STDIN>);
}

sub setcolorChar {
     print "\nDoes your sign have colored letters? (0=no, 1=yes) ";
     chomp ($coloredChar = <STDIN>);
}

sub setOrdernum {
     print "\nWhat's your order number?: ";
     chomp ($orderNum = <STDIN>);
}

sub calculateTotal {
     use constant BASE_PRICE => 30;
     use constant WOOD_OAK => 15;
     use constant GOLD_LETTER => 12;
     use constant LETTER_NUM => 6;
     use constant LETTER_NUM_FEE => 3;
     if ($charNum > 0 && $charNum < LETTER_NUM){
          $total = BASE_PRICE + LETTER_NUM_FEE;
     } elsif ($charNum > 0 && $charNum < LETTER_NUM && $wood == 1){
          $total = BASE_PRICE + LETTER_NUM_FEE + WOOD_OAK;
     } elsif ($charNum > 0 && $charNum < LETTER_NUM && $wood == 1 && $gold == 1){
          $total = BASE_PRICE + LETTER_NUM_FEE + WOOD_OAK + GOLD_LETTER;
     }
}

sub printTotal {
     use constant TOTAL => 30;
     system ("cls");
     if ($total > TOTAL) {
          print "n\n\t\t\tYour bill is $total";
     }
}

sub printBye{
     system ("cls");
     print "\n\n\n\t\t\t\tGoodbye \t\t\t\t\t"
}
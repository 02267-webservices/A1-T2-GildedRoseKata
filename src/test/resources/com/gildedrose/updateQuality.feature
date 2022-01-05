Feature: Gilded Rose behaviour of the legacy code
 # +5 Dexterity Vest
  Scenario: +5 Dexterity Vest decreases in quality the older it gets
    Given an item named "+5 Dexterity Vest" with quality 20 and which has to be sold in 10 days
    When a day has passed
    Then it has to be sold in 9 days
    And its quality is 19

  Scenario: +5 Dexterity Vest decreases twice as fast in quality, when the sell by date is passed
    Given an item named "+5 Dexterity Vest" with quality 20 and which has to be sold in 0 days
    When a day has passed
    Then it has to be sold in -1 days
    And its quality is 18

  Scenario: +5 Dexterity Vest's quality is never negative
    Given an item named "+5 Dexterity Vest" with quality 0 and which has to be sold in 1 days
    When a day has passed
    Then it has to be sold in 0 days
    And its quality is 0

 # Aged Brie
  Scenario: Aged Brie increases in quality the older it gets
    Given an item named "Aged Brie" with quality 0 and which has to be sold in 2 days
    When a day has passed
    Then it has to be sold in 1 days
    And its quality is 1

  Scenario: Aged Brie's quality can't get over 50
    Given an item named "Aged Brie" with quality 50 and which has to be sold in 2 days
    When a day has passed
    Then it has to be sold in 1 days
    And its quality is 50

  Scenario: Aged Brie doesn't decrease in quality, when selling date is passed
    Given an item named "Aged Brie" with quality 50 and which has to be sold in -3 days
    When a day has passed
    Then it has to be sold in -4 days
    And its quality is 50

 #Elixir of the Mongoose
  Scenario: Elixir of the Mongoose decreases in quality the older it gets
    Given an item named "Elixir of the Mongoose" with quality 7 and which has to be sold in 5 days
    When a day has passed
    Then it has to be sold in 4 days
    And its quality is 6

  Scenario: Elixir of the Mongoose decreases twice as fast in quality when selling date is passed
    Given an item named "Elixir of the Mongoose" with quality 7 and which has to be sold in 0 days
    When a day has passed
    Then it has to be sold in -1 days
    And its quality is 5

  Scenario: Elixir of the Mongoose quality is never negative
    Given an item named "Elixir of the Mongoose" with quality 0 and which has to be sold in 0 days
    When a day has passed
    Then it has to be sold in -1 days
    And its quality is 0

 # Sulfuras, Hand of Ragnaros
  Scenario: Sulfuras, Hand of Ragnaros never has to be sold and never changes quality
    Given an item named "Sulfuras, Hand of Ragnaros" with quality 80 and which has to be sold in 0 days
    When a day has passed
    Then it has to be sold in 0 days
    And its quality is 80

  Scenario: Sulfuras, Hand of Ragnaros never has to be sold and never changes quality
    Given an item named "Sulfuras, Hand of Ragnaros" with quality 80 and which has to be sold in -1 days
    When a day has passed
    Then it has to be sold in -1 days
    And its quality is 80

 # Backstage passes
  Scenario: Backstage passes to a TAFKAL80ETC concert increases 1 in quality the older it gets (when there are more than 10 days left)
    Given an item named "Backstage passes to a TAFKAL80ETC concert" with quality 20 and which has to be sold in 15 days
    When a day has passed
    Then it has to be sold in 14 days
    And its quality is 21

  Scenario: Backstage passes to a TAFKAL80ETC concert increases 2 in quality the older it gets (when there are more than 5 and 10 days or less left)
    Given an item named "Backstage passes to a TAFKAL80ETC concert" with quality 20 and which has to be sold in 10 days
    When a day has passed
    Then it has to be sold in 9 days
    And its quality is 22

  Scenario: Backstage passes to a TAFKAL80ETC concert increases 2 in quality the older it gets (when there are more than 5 and 10 days or less left)
    Given an item named "Backstage passes to a TAFKAL80ETC concert" with quality 20 and which has to be sold in 6 days
    When a day has passed
    Then it has to be sold in 5 days
    And its quality is 22

  Scenario: Backstage passes to a TAFKAL80ETC concert increases 3 in quality the older it gets (when there are 0 or more and 5 days or less left)
    Given an item named "Backstage passes to a TAFKAL80ETC concert" with quality 20 and which has to be sold in 5 days
    When a day has passed
    Then it has to be sold in 4 days
    And its quality is 23

  Scenario: Backstage passes to a TAFKAL80ETC concert increases 3 in quality the older it gets (when there are 0 or more and 5 days or less left)
    Given an item named "Backstage passes to a TAFKAL80ETC concert" with quality 20 and which has to be sold in 1 days
    When a day has passed
    Then it has to be sold in 0 days
    And its quality is 23

  Scenario: Backstage passes to a TAFKAL80ETC concert drops to 0 in quality after the selling date.
    Given an item named "Backstage passes to a TAFKAL80ETC concert" with quality 20 and which has to be sold in 0 days
    When a day has passed
    Then it has to be sold in -1 days
    And its quality is 0

  Scenario: Backstage passes to a TAFKAL80ETC concert's quality increases, but not over 50, the older it gets
    Given an item named "Backstage passes to a TAFKAL80ETC concert" with quality 49 and which has to be sold in 9 days
    When a day has passed
    Then it has to be sold in 8 days
    And its quality is 50

  Scenario: Backstage passes to a TAFKAL80ETC concert's quality increases, but not over 50, the older it gets
    Given an item named "Backstage passes to a TAFKAL80ETC concert" with quality 49 and which has to be sold in 5 days
    When a day has passed
    Then it has to be sold in 4 days
    And its quality is 50

  Scenario: Backstage passes to a TAFKAL80ETC concert's quality increases, but not over 50, the older it gets
    Given an item named "Backstage passes to a TAFKAL80ETC concert" with quality 49 and which has to be sold in 1 days
    When a day has passed
    Then it has to be sold in 0 days
    And its quality is 50

  Scenario: Backstage passes to a TAFKAL80ETC concert's quality drops to zero after selling date
    Given an item named "Backstage passes to a TAFKAL80ETC concert" with quality 49 and which has to be sold in -5 days
    When a day has passed
    Then it has to be sold in -6 days
    And its quality is 0

 # Conjured
  Scenario: Conjured decrease twice as fast as normal items
    Given an item named "Conjured" with quality 49 and which has to be sold in 10 days
    When a day has passed
    Then it has to be sold in 9 days
    And its quality is 47

  Scenario: Conjured decrease twice as fast as normal items (quality not below 0)
    Given an item named "Conjured" with quality 1 and which has to be sold in 10 days
    When a day has passed
    Then it has to be sold in 9 days
    And its quality is 0

  Scenario: Conjured decrease twice as fast as normal items (quality not below 0)
    Given an item named "Conjured" with quality 2 and which has to be sold in 10 days
    When a day has passed
    Then it has to be sold in 9 days
    And its quality is 0

  Scenario: Conjured decrease twice as fast as normal items (quality not below 0)
    Given an item named "Conjured" with quality 0 and which has to be sold in 10 days
    When a day has passed
    Then it has to be sold in 9 days
    And its quality is 0

  Scenario: Conjured decrease twice as fast as normal items, when sell in day is below 0)
    Given an item named "Conjured" with quality 10 and which has to be sold in 0 days
    When a day has passed
    Then it has to be sold in -1 days
    And its quality is 6

  Scenario: Conjured decrease twice as fast as normal items, when sell in day is below 0 (quality not below 0)
    Given an item named "Conjured" with quality 3 and which has to be sold in 0 days
    When a day has passed
    Then it has to be sold in -1 days
    And its quality is 0
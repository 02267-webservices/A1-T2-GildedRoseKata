package com.gildedrose;

class GildedRose {
    Item[] items;

    public GildedRose(Item[] items) {
        this.items = items;
    }

    public void updateQuality() {
        for(Item item : items) {
            doUpdate(item);
        }
    }

    public void doUpdate(Item item){
        switch (item.name) {
            case "Aged Brie":
                item.sellIn = item.sellIn - 1;
                if (item.quality < 50) {
                    item.quality = item.quality + 1;
                }
                break;
            case "Sulfuras, Hand of Ragnaros":

                break;
            case "Backstage passes to a TAFKAL80ETC concert":
                //item.sellIn = item.sellIn - 1;
                if (item.quality < 50) {
                    item.quality = item.quality + 1;
                    if (item.sellIn < 11) {
                        if (item.quality < 50) {
                            item.quality = item.quality + 1;
                        }
                        if (item.sellIn < 6) {
                            if (item.quality < 50) {
                                item.quality = item.quality + 1;
                            }
                        }
                    }
                }
                item.sellIn = item.sellIn - 1;
                if (item.sellIn < 0) {
                    item.quality = 0;
                }
                break;
            case "Conjured":
                if(item.quality >= 2) {
                    item.quality = item.quality - 2;
                }
                else {
                    item.quality = 0;
                }
                item.sellIn = item.sellIn - 1;
                if (item.sellIn < 0) {
                    if (item.quality >= 2) {
                        item.quality = item.quality - 2;
                    }
                    else {
                        item.quality = 0;
                    }
                }
                break;
            default:
                if (item.quality > 0) {
                    item.quality = item.quality - 1;
                }

                item.sellIn = item.sellIn - 1;

                if (item.sellIn < 0) {
                    if (item.quality > 0) {
                        item.quality = item.quality - 1;
                    }

                }
                break;
        }

    }
}
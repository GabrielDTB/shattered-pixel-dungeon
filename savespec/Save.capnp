@0x94c07ca42ff37c5d;

struct Item {
    # TODO Finish kind
    # TODO Find remaining fields
    quantity @0 :Int64;
    level @1 :Int64;
    levelKnown @2 :Bool;
    cursed @3 :Bool;
    cursedKnown @4 :Bool;
    unique @11 :Bool;
    union {
        armor @5:Armor;
        artifact @6 :Artifact;
        bag @7 :Bag;
        bomb @8 :Bomb;
        food @9 :Food;
        journal @10 :Journal;
        # key :group {}
        # potion :group {}
        # quest :group {}
        # ring :group {}
        # scroll :group {}
        # spell :group {}
        # stone :group {}
        # wand :group {}
        # weapon :group {}
    }
    
    struct Armor { # Completed pass 1
        usesLeftToId @0 :Float64;
        availableUsesToId @1 :Float64;
        glyph :union {
            none @2 :Void;
            some @3 :Glyph;
        }
        hardened @4 :Bool;
        curseInfusionBonus @5 :Bool;
        masteryPotionBonus @6 :Bool;
        seal :union {
            none @7 :Void;
            some @8 :Item; # This item should be a seal
        }
        tier @9 :Int64;
        augment :union {
            none @10 :Void;
            some @11 :Augment;
        }
        union {
            cloth @12 :Void;
            leather @13 :Void;
            mail @14 :Void;
            scale @15 :Void;
            plate @16 :Void;
            heroic @17 :Heroic;
        }
        
        struct Glyph { # Completed pass 1
            union {
                obfuscation @0 :Void; # Positive glyphs
                swiftness @1 :Void;
                viscosity @2 :Void;
                potential @3 :Void;
                brimstone @4 :Void;
                stone @5 :Void;
                entanglement @6 :Void;
                repulsion @7 :Void;
                camoflage @8 :Void;
                flow @9 :Void;
                affection @10 :Void;
                antiMagic @11 :Void;
                thorns @12 :Void;
                antiEntropy @13 :Void; # Curse glyphs
                corrosion @14 :Void;
                displacement @15 :Void;
                metabolism @16 :Void;
                multiplicity @17 :Void;
                stench @18 :Void;
                overgrowth @19 :Void;
                bulk @20 :Void;
            }
        }
        struct Augment { # Completed pass 1
            union {
                none @0 :Void;
                evasion @1 :Void;
                defence @2 :Void;
            }
        }
        struct Heroic {
            charge @0 :Float64;
            union {
                warrior @1 :Void;
                mage @2 :Void;
                rogue @3 :Void;
                huntress @4 :Void;
                duelist @5 :Void;
            }
        }
    }
    
    struct Artifact { # TODO Finish artifacts
        experience @0 :Int64;
        charge @1 :Int64;
        partialCharge @2 :Float64;
        kind :union {
            alchemistsToolkit :group {
                warmUpDelay @3 :Float64;
            }
            capeOfThorns @4 :Void;
            chaliceOfBlood @5 :Void;
            cloakOfShadows :group {
                buff @6 :ActiveBuff;
            }
        }
    }
    
    struct Bag { # Completed pass 1
        items @0 :List(Item);
        kind :union {
            magicalHolster @1 :Void;
            potionBandolier @2 :Void;
            scrollHolder @3 :Void;
            velvetPouch @4 :Void;
        }
    }
    
    struct Bomb { # TODO Fill out bomb
        todo @0 :Void;
    }
    
    struct Food { # TODO Finish blandfruit
        kind :union {
            berry @0 :Void;
            blandfruit @1 :Blandfruit;
            chargrilledMeat @2 :Void;
            frozenCarpaccio @3 :Void;
            meatPie @4 :Void;
            mysteryMeat @5 :Void;
            pasty @6 :Void;
            phantomMeat @7 :Void;
            ration @8 :Void;
            smallRation @9 :Void;
            stewedMeat @10 :Void;
        }

        struct Blandfruit { # TODO Fill out blandfruit
            todo @0 :Void;
        }
    }
    
    struct Journal { # Completed pass 1
        page @0 :Text;
        union {
            alchemyPage @1 :Void;
            guidebook @2 :Void;
            guidePage @3 :Void;
            regionLorePage @4 :RegionLorePage;
        }

        struct RegionLorePage {
            union {
                sewers @0 :Void;
                prison @1 :Void;
                caves @2 :Void;
                city @3 :Void;
                halls @4 :Void;
            }
        }
    }

    struct Key { # Completed pass 1
        depth @0 :Int64;
        union {
            iron @1 :Void;
            golden @2 :Void;
            crystal @3 :Void;
            skeleton @4 :Void;
        }
    }

    struct Potion { # Completed pass 1
        union {
            alchemicalCatalyst @0 :Void; # "Potion"
            experience @1 :Void; # Regular potions
            frost @2 :Void;
            haste @3 :Void;
            healing @4 :Void;
            invisibility @5 :Void;
            levitation @6 :Void;
            liquidFire @7 :Void;
            mindVision @8 :Void;
            paralyticGas @9 :Void;
            purity @10 :Void;
            strength @11 :Void;
            toxicGas @12 :Void;
            cleansing @13 :Void; # Exotic potions
            corrosiveGas @14 :Void;
            divineInspiration @15 :Void;
            dragonsBreath @16 :Void;
            earthenArmor @17 :Void;
            magicalSight @18 :Void;
            mastery @19 :Void;
            shielding @20 :Void;
            shroudingFog @21 :Void;
            snapFreeze @22 :Void;
            stamina @23 :Void;
            stormClouds @24 :Void;
            aquaticRejuvination @25 :Void; # Elixirs
            arcaneArmor @26 :Void;
            dragonsBlood @27 :Void;
            honeyedHealing @28 :Void;
            icyTouch @29 :Void;
            might @30 :Void;
            toxicEssence @31 :Void;
            blizzard @32 :Void; # Brews
            caustic @33 :Void;
            infernal @34 :Void;
            shocking @35 :Void;
        }
    }

    struct Quest { # TODO pickaxe
        union {
            ceremonialCandle @0 :CeremonialCandle;
            corpseDust @1 :CorpseDust;
            darkGold @2 :Void;
            dwarfToken @3 :Void;
            embers @4 :Void;
            gooBlob @5 :Void;
            metalShard @6 :Void;
            # pickaxe @7 :Pickaxe; # TODO Figure out what to do about pickaxe
            ratSkull @7 :Void;
        }

        struct CeremonialCandle {
            aflame @0 :Bool;
        }

        struct CorpseDust {
            spawnPower @0 :Int64;
        }
    }
}

struct Inventory {
    items @0 :List(Item);
}

enum ArmorGlyph {}
enum ArmorAugment {}
enum ArmorVariant {
    cloth @0;
    leather @1;
    chain @2;
    scale @3;
    plate @4;
}
enum ArmorClassVariant {}
struct ActiveBuff {}
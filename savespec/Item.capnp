@0xb414e779dd33e5df;

struct Item {
    quantity @0 :Int64;
    level @1 :Int64;
    levelKnown @2 :Bool;
    cursed @3 :Bool;
    cursedKnown @4 :Bool;
    unique @11 :Bool;
    keptThroughListInventory @37 :Bool;
    union {
        armor @5:Armor;
        artifact @6 :Artifact;
        bag @7 :Bag;
        bomb @8 :Bomb;
        food @9 :Food;
        journal @10 :Journal;
        key @20 :Key;
        potion @12 :Potion;
        quest @13:Quest;
        ring @14 :Ring;
        scroll @15 :Scroll;
        spell @16 :Spell;
        stone @17 :Stone;
        wand @18 :Wand;
        weapon @19 :Weapon;
        amulet @20 :Void;
        ankh @21 :Ankh;
        arcaneResin @22 :Void;
        brokenSeal @23 :BrokenSeal;
        dewdrop @24 :Void;
        energyCrystal @25 :Void;
        generator @26 :Generator;
        gold @27 :Void;
        heap @28 :Heap;
        honeypot @29 :Void;
        kingsCrown @30 :Void;
        liquidMetal @31 :Void;
        lostBackpack @32 :Void;
        stylus @33 :Void;
        tengusMask @34 :Void;
        torch @35 :Void;
        waterskin @36 :Waterskin;
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
    
    struct Food { # Completed pass 1
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

    struct Ring { # Completed pass 1
        levelsToId @0 :Float64;
        union {
            accuracy @1 :Void;
            arcana @2 :Void;
            elements @3 :Void;
            energy @4 :Void;
            evasion @5 :Void;
            force @6 :Void;
            furor @7 :Void;
            haste @8 :Void;
            might @9 :Void;
            sharpshooting @10 :Void;
            tenacity @11 :Void;
            wealth @12 :Wealth;
        }

        struct Wealth {
            triesToDrop @0 :Float64;
            dropsToRare @1 :Int64;
        }
    }

    struct Scroll { # Completed pass 1
        union {
            identity @0 :Void;# Normal
            lullaby @1 :Void;
            magicMapping @2 :Void;
            mirrorImage @3 :Void;
            rage @4 :Void;
            recharging @5 :Void;
            removeCurse @6 :Void;
            retribution @7 :Void;
            teleportation @8 :Void;
            terror @9 :Void;
            transmutation @10 :Void;
            upgrade @11 :Void;
            antiMagic @12 :Void; # Exotic
            challenge @13 :Void;
            divination @14 :Void;
            dread @15 :Void;
            enchantment @16 :Void;
            foresight @17 :Void;
            metamorphosis @18 :Void;
            mysticalEnergy @19 :Void;
            passage @20 :Void;
            prismaticImage @21 :Void;
            psionicBlast @22 :Void;
            sirensSong @23 :Void;
        }
    }

    struct Spell { # Completed pass 1
        union {
            alchemize @0 :Void;
            aquaBlast @1 :Void;
            arcaneCatalyst @2 :Void;
            beaconOfReturning @3 :BeaconOfReturning;
            curseInfusion @4 :Void;
            featherFall @5 :Void;
            magicalInfusion @6 :Void;
            phaseShift @7 :Void;
            reclaimTrap @8 :ReclaimTrap;
            recycle @9 :Void;
            summonElemental @10 :SummonElemental;
            telekineticGrab @11 :Void;
            wildEnergy @12 :Void;
        }

        struct BeaconOfReturning {
            returnDepth @0 :Int64;
            returnBranch @1 :Int64;
            returnPosition @2 :Int64;
        }

        struct ReclaimTrap {
            storedTrap @0 :Todo; # TODO Trap
        }

        struct SummonElemental {
            summonClass @0 :Todo; # TODO SummonClass
        }
    }

    struct Stone {
        union {
            agggression @0 :Void;
            augmentation @1 :Void;
            blast @2 :Void;
            blink @3 :Void;
            clairvoyance @4 :Void;
            deepSleep @5 :Void;
            disarming @6 :Void;
            enchantment @7 :Void;
            fear @8 :Void;
            flock @9 :Void;
            intuition @10 :Void;
            shock @11 :Void;
        }
    }

    struct Wand { # Completed pass 1
        usesLeftToId @0 :Float64;
        availableUsesToId @1 :Float64;
        currentCharges @2 :Int64;
        currentChargesKnown @3 :Bool;
        partialCharge @4 :Float64;
        curseInfusionBonus @5 :Bool;
        resinBonus @6 :Int64;
        union {
            blastWave @7 :Void;
            corrosion @8 :Void;
            corruption @9 :Void;
            disintegration @10 :Void;
            fireblast @11 :Void;
            frost @12 :Void;
            lightning @13 :Void;
            livingEarth @14 :LivingEarth;
            magicMissile @15 :MagicMissile;
            prismaticLight @16 :Void;
            regrowth @17 :Regrowth;
            transfusion @18 :Transfusion;
            warding @19 :Warding;
        }

        struct LivingEarth {
            wandLevel @0 :Int64; # TODO Figure out why wandLevel is stored
            armor @1 :Int64; # TODO FIgure out why armor is stored
        }

        struct MagicMissile {
            level @0 :Int64; # TODO Figure out why level is stored
        }

        struct Regrowth {
            totalChargesUsed @0 :Int64;
            chargesOverLimit @1 :Int64;
        }

        struct Transfusion {
            freeCharge @0 :Bool;
        }

        struct Warding {
            tier @0 :Int64;
            wandLevel @1 :Int64; # TODO Find why wandLevel is stored
            totalZaps @2 :Int64; 
        }
    }

    struct Weapon {
        union {
            usesLeftToId @0 :Float64;
            availableUsesToId @1 :Float64;
            enchantment :union {
                none @2 :Void;
                some @3 :Enchantment;
            }
            hardened @4 :Bool;
            curseInfusionBonus @5 :Bool;
            masteryPotionBonus @6 :Bool;
            augment :union {
                none @7 :Void;
                some @8 :Augment;
            }
            union {
                melee @9 :Melee;
                throwing @10 :Throwing;
            }
        }

        struct Enchantment { # Completed pass 1
            union {
                blazing @0 :Void; # Common
                chilling @1 :Void;
                kinetic @2 :Kinetic;
                shocking @3 :Void;
                blocking @4 :Void; # Uncommon
                blooming @5 :Void;
                elastic @6 :Void;
                lucky @7 :Void;
                projecting @8 :Void;
                unstable @9 :Void;
                corrupting @10 :Void; # Rare
                grim @11 :Void;
                vampiric @12 :Void;
                 # Curses
                annoying @13 :Void;
                displacing @14 :Void;
                dazzling @15 :Void;
                explosive @16 :Explosive;
                sacrificial @17 :Void;
                wayward @18 :Void;
                polarized @19 :Void;
                friendly @20 :Void;
            }

            struct Kinetic {
                storedDamage @0 :Float64;
            }

            struct Explosive {
                durability @0 :Int64;
            }
        }

        struct Melee { # Completed pass 1
            charge @0 :Int64;
            partialCharge @1 :Float64;
            secondCharges @2 :Int64;
            partialSecondCharges @3 :Float64;
            
            union {
                assassinsBlade @4 :Void;
                battleAxe @5 :Void;
                crossbow @6 :Void;
                dagger @7 :Void;
                dirk @8 :Void;
                flail @9 :Flail;
                gauntlet @10 :Void;
                glaive @11 :Void;
                gloves @12 :Void;
                greataxe @13 :Void;
                greatshield @14 :Void;
                greatsword @15 :Void;
                handAxe @16 :Void;
                katana @17 :Void;
                longsword @18 :Void;
                mace @19 :Void;
                magesStaff @20 :MagesStaff;
                quarterstaff @21 :Void;
                rapier @22 :Void;
                roundShield @23 :Void;
                runicBlade @24 :Void;
                sai @25 :Sai;
                scimitar @26 :Void;
                shortsword @27 :Void;
                sickle @28 :Void;
                spear @29 :Void;
                sword @30 :Void;
                warHammer @31 :Void;
                warScythe @32 :Void;
                whip @33 :Void;
                swordShortsword @34 :Void;
                spiritBow @35 :Void;
            }

            struct Flail {
                spins @0 :Int64;
            }

            struct MagesStaff {
                wand @0 :Item; # Item should be a wand
            }
            
            struct Sai {
                hits @0 :Todo; # TODO Figure out hits
            }
        }

        struct Thrown { # Completed pass 1
            durability @0 :Float64;
            union {
                bolas @1 :Void;
                dart @2 :Dart;
                fishingSpear @3 :Void;
                heavyBoomerang @4 :HeavyBoomerang;
                javelin @5 :Void;
                kunai @6 :Void;
                shuriken @7 :Void;
                throwingClub @8 :Void;
                throwingHammer @9 :Void;
                throwingKnife @10 :Void;
                throwingSpear @11 :Void;
                throwingSpike @12 :Void;
                throwingStone @13 :Void;
                tomahawk @14 :Void;
                trident @15 :Void;
            }

            struct Dart {
                union {
                    standard @0 :Void;
                    andrenaline @1 :Void;
                    blinding @2 :Void;
                    chilling @3 :Void;
                    cleansing @4 :Void;
                    displacing @5 :Void;
                    healing @6 :Void;
                    holy @7 :Void;
                    incindiary @8 :Void;
                    paralytic @9 :Void;
                    poison @10 :Void;
                    rot @11 :Void;
                    shocked @12 :Void;
                }
            }

            struct HeavyBoomerang {
                todo @0 :Todo; 
                # TODO figure out throwing logic
            }
        }

        struct Augment { # Completed pass 1
            union {
                speed @0 :Void;
                damage @1 :Void;
            }
        }
    }

    struct Ankh {
        blessed @0 :Bool;
    }

    struct BrokenSeal {
        glyph @0 :Item.Armor.Glyph;
    }
    
    struct Generator {
        todo @0 :Todo; # TODO Figure out what to do with generator
    }
    
    struct Heap {
        todo @0 :Todo; # TODO Figure out what to do with Heap
    }
    
    struct Waterskin {
        volume @0 :Int64;
    }
}
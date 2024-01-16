@0x94c07ca42ff37c5d;

using Item = import "Item.capnp".Item;

struct Actor {
    time @0 :Float64;
    id @1 :Int64;
    union {
        char :Char;
        blob :Blob; # TODO
        buff :Buff; # TODO
        pushing :Pushing; # TODO
        swap :Swap; # TODO
        fuse :Fuse; # TODO
    }

    struct Char {
        position @0 :Int64;
        hp @1 :Int64;
        ht @2 :Int64;
        buffs @3 :List(Buff);
        union @4 {
            hero :Hero;
            mob :Mob;
        }

        enum Alignment {
            enemy @0;
            neutral @1;
            enemy @2;
        }

        struct Hero {
            heroClass @0 :HeroClass;
            subClass @1 :SubClass;
            armorAbility @2 :ArmorAbility;
            talents @3 :; # TODO
            attack @4 :Int64;
            defence @5 :Int64;
            strength @6 :Int64;
            level @7 :Int64;
            experience @8 :Int64;
            htBoost @9 :Int64;
        }

        struct Mob {
            state @0 :union {
                sleeping
                wandering
                hunting
                fleeing
                passive
            }
            enemySeen :Bool;
            target :Int64; # TODO The whole mob store logic looks sketchy
            maxLevel :Int64;
            id :Int64;
            union {
                bandit :Void;
                bat :Void;
                bee :Bee;
                bestiary :Void; # TODO Figure out what this is
                brute :Brute;
                crab :Crab;
                crystalGuardian :CrystalGuardian;
                crystalSpire :CrystalSpire;
                crystalWisp :CrystalWisp;
                demonSpawner :DemonSpawner;
                dm100 :Void;
                dm200 :Dm200;
                dm300 :Dm300;
                dwarfKing :DwarfKing;
                elemental :Elemental;
                eye :Eye;
                ghoul :Ghoul;
                gnoll :Gnoll;
                golem :Golem;
                goo :Goo;
                guard :Guard;
                mimic :Mimic;
                monk :Monk;
                necromancer :Monk;
                npc
                piranha :Piranha; # And phantom
                pylon :Pylon;
                rat :Rat;
                ripperDemon :RipperDemon;
                rotHeart :Void;
                rotLasher :Void;
                scorpio :Scorpio;
                shaman :Void;
                skeleton :Void;
                slime :Slime;
                snake :Void;
                spectralNecromancer
                spinner :Spinner;
                statue :Statue;
                succubus :Succubus;
                swarm :Swarm;
                tengu :Tengu;
                thief :Thief;
                tormentedSpirit :Void;
                warlock :Void;
                wraith
                yogDzewea
                yogFist
            }

            struct Bee {
                level @0 :Int64;
                potPosition @1 :Int64;
                potHolder @2 :Int64;
                alignment @3 :Alignment;
            }

            struct Brute {
                hasRaged @0 :Bool;
                union {
                    standard @1 :Void;
                    armored @2 :Void;
                }
            }

            struct Crab {
                union {
                    standard @0 :Void;
                    great @1 :Void;
                }
            }

            struct CrystalGuardian {
                todo @0 :Todo; # TODO Figure out what to store for crystal guardian
            }

            struct CrystalSpire {
                todo @0 :Todo; # TODO Figure out what to store for crystal spire
            }

            struct CrystalWisp {
                todo @0 :Todo; # TODO FIgure out what to store for crystal wisp
            }

            struct DemonSpawner {
                spawnCooldown @0 :Float64;
                spawnRecorded @1 :Bool;
            }

            struct Dm200 {
                ventCooldown @0 :Int64;
                union {
                    standard @1 :Void;
                    dm201 @2 :Void;
                }
            }

            struct Dm300 {
                pylonsActivated @0 :Int64;
                superCharged @1 :Bool;
                chargeAnnounced @2 :Bool;
                turnsSinceLastAbility @3 :Int64;
                abilityCooldown @4 :Int64;
                lastAbility @5 :Int64; # TODO Should this be an int?
            }

            struct DwarfKing {
                phase @0 :Int64; # TODO Should this be an int?
                summonsMade @1 :Int64;
                summonCooldown @2 :Float64;
                abilityCooldown @3 :Float64;
                lastAbility @4 :Int64; # TODO Should this be an int?
            }

            struct Elemental {
                rangedCooldown @0 :Int64;
                summonedAlly @1 :Int64;
                union {
                    fire @2 :Void;
                    newBornFire @3 :Void;
                    frost @4 :Void;
                    shock @5 :Void;
                    chaos @6 :Void;
                }
            }

            struct Eye {
                beamTarget @0 :Int64;
                beamCooldown @1 :Int64;
                beamCharged @2 :Bool;
            }

            struct Ghoul {
                partnerId @0 :Int64;
                timesDowned @1 :Int64;
            }

            struct Gnoll {
                union {
                    standard @0 :Void;
                    guard @1 :Void;
                    trickster @2 :Trickster;
                }

                struct Trickster {
                    combo @0 :Int64;
                }
            }

            struct Golem {
                teleporting @0 :Bool;
                selfTeleportCooldown @1 :Int64;
                enemyTeleportCooldown @2 :Int64;
            }

            struct Goo {
                pumpedUp :Bool;
                healing :Int64;
            }

            struct Guard {
                chainsUsed @0 :Bool;
            }

            struct Mimic {
                items @0 :List(Item);
                level @1 :Int64;
                union {
                    standard @2 :Void;
                    golden @3 :Void;
                    crystal @4 :Void;
                }
            }

            struct Monk {
                focusCooldown @0 :Float64;
                union {
                    standard @1 :Void;
                    senior @2 :Void;
                }
            }

            struct Necromancer {
                summoning :union {
                    none @0 :Void;
                    some @1 :Summoning;
                }
                firstSummon @2 :Bool;
                mySkeleton @3 :Int64; # Mob ID
                union {
                    standard @4 :Void;
                    spectral @5 :Spectral;
                }

                struct Summoning {
                    position @0 :Int64;
                }

                struct Spectral {
                    wraithIds @0 :List(Int64);
                }
            }

            struct Npc {
                union {
                    
                }
            }

            struct Piranha {
                union {
                    standard @0 :Void;
                    phantom @1 :Void;
                }
            }

            struct Pylon {
                alignment @0 :Alignment;
                targetNeighbor @1 :Int64;
            }

            struct Rat {
                union {
                    standard @0 :Void;
                    albino @1 :Void;
                    ally @2 :Void;
                    fetid @3 :Void;
                }
            }

            struct RipperDemon {
                lastEnemyPosition @0 :Int64;
                leapPosition @1 :Int64;
                leapCooldown @2 :Int64;
            }

            struct Scorpio {
                union {
                    standard @0 :Void;
                    acidic @1 :Void;
                }
            }

            struct Slime {
                union {
                    standard @0 :Void;
                    caustic @1 :Void;
                }
            }

            struct Spinner {
                webCooldown @0 :Int64;
                lastEnemyPosition @1 :Int64;
            }

            struct Statue {
                weapon @0 :Item; # Item should be a weapon
                union {
                    standard @1 :Void;
                    armored @2 :Armored;
                }

                struct Armored {
                    armor @0 :Item; # Item should be an armor piece
                }
            }

            struct Succubus {
                blinkCooldown @0 :Int64;
            }

            struct Swarm {
                generation @0 :Int64;
            }

            struct Tengu {
                lastAbility @0 :Int64;
                abilitiesUsed @1 :Int64;
                arenaJumps @2 :Int64;
                abilityCooldown @3 :Int64;
            }

            struct Thief {
                item @0 :Item;
            }

            struct Wraith {
                level :Int64;
            }

            struct YogDzewa {
                phase @0 :Int64;
                abilityCooldown @1 :Int64;
                summonCooldown @2 :Int64;
                fistSummons @3 :List(Todo);
                challengeSummons @4 :List(Todo); # TODO FIgure out what this is storing
                regularSummons @5 :List(Todo);
                targetedCells @6 :List(Int64);
            }

            struct YogFist {
                rangedCoolDown @0 :Int64;
            }
        }
    }

    struct Buff {
        union {
            
        }
    }
}

struct ActiveBuff {}
struct Gem {
    union {
        garnet @0 :Void;
        ruby @1 :Void;
        topaz @2 :Void;
        emerald @3 :Void;
        onyx @4 :Void;
        opal @5 :Void;
        tourmaline @6 :Void;
        sapphire @7 :Void;
        amethyst @8 :Void;
        quartz @9 :Void;
        agate @10 :Void;
        diamond @11 :Void;
    }
}

state("LFS")
{
    int levelIndex : 0x41F070;
    int isRacing: 0x5B197C;
    int crossedFinishLine: 0x43EC58, 0x4C;
}

startup
{
    settings.Add("Demo");
    settings.Add("S1");
    settings.Add("S2");
    settings.Add("All tests");
}

start {

    if(old.isRacing != 0 || current.isRacing == 0) {
        return false;
    }
    if((settings["All tests"] || settings["Demo"]) && current.levelIndex == 0)
    {
        return true;
    }
    if(settings["S1"] && current.levelIndex == 18)
    {
        return true;
    }
    if(settings["S2"] && current.levelIndex == 26)
    {
        return true;
    }
}

split {

    if(old.crossedFinishLine == 0 && current.crossedFinishLine == 1)
    {
        // End GTI 
        if(current.levelIndex == 5) {
            return true;
        }
            
        // End Formula BMW
        if(current.levelIndex == 13) {
            return true;
        }

        // End XR GT
        if(current.levelIndex == 17) {
            return true;
        }

        // End FXO
        if(current.levelIndex == 19) {
            return true;
        }

        // End LX4
        if(current.levelIndex == 21) {
            return true;
        }

        // End RB4
        if(current.levelIndex == 23) {
            return true;
        }

        // End MRT
        if(current.levelIndex == 25) {
            return true;
        }

        // End UF 1000
        if(current.levelIndex == 27) {
            return true;
        }

        // End Race About
        if(current.levelIndex == 29) {
            return true;
        }

        // End XF GTR
        if(current.levelIndex == 31) {
            return true;
        }

        // End FZ50 GTR
        if(current.levelIndex == 33) {
            return true;
        }

        // End F08
        if(current.levelIndex == 35) {
            return true;
        }

        // End BF1
        if(current.levelIndex == 37) {
            return true;
        }
    }
    return false;    
}

isLoading
{
    if(current.isRacing == 0)
    {
        return true;
    }
    else if(current.crossedFinishLine == 1 && current.levelIndex != 4)
    {
        return true;
    }
    else
    {
        return false;
    }
}

state("LFS")
{
    int levelIndex : 0x41F070;
    int isRacing: 0x5B197C;
}

init {}

startup {}

start {
    if(old.isRacing == 0 && current.isRacing == 1) {
        return true;
    }
}

split {
    // Only split on the first frame after level finishes
    if(old.isRacing == 0 || current.isRacing == 1)
    {
        return false;
    }

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

isLoading
{
   if(current.isRacing == 0)
    {
        return true;
    }
    else
    {
        return false;
    }
}

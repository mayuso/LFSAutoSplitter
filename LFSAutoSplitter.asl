state("LFS")
{
    int levelindex : 0x41F070;
}

init {}

startup {}

split {

    // Do not finish the split if there is no level increase
    if(current.levelindex - 1 != old.levelindex) {
        return false;
    }

    // Start Formula BMW
    if(current.levelindex == 6) {
        return true;
    }

    // Start XR GT
    if(current.levelindex == 14) {
        return true;
    }

    // Start FXO
    if(current.levelindex == 18) {
        return true;
    }

    // Start LX4
    if(current.levelindex == 20) {
        return true;
    }

    // Start RB4
    if(current.levelindex == 22) {
        return true;
    }

    // Start MRT
    if(current.levelindex == 24) {
        return true;
    }

    // Start UF 1000
    if(current.levelindex == 26) {
        return true;
    }

    // Start Race About
    if(current.levelindex == 28) {
        return true;
    }

    // Start XF GTR
    if(current.levelindex == 30) {
        return true;
    }

    // Start FZ50 GTR
    if(current.levelindex == 32) {
        return true;
    }

    // Start F08
    if(current.levelindex == 34) {
        return true;
    }

    // Start BF1
    if(current.levelindex == 36) {
        return true;
    }
}

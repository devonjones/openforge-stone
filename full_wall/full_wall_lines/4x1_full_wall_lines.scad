include <../../../lib/forge_lib.scad>

module 4x1_wall_line(sc, seed, manifold=-0.05) {
  seed_vect = rands(0, 100, 26, seed=seed);
  
  translate([0,1,0]) scale([1,1,1+sc]) union() {
    translate([1,0,0]) cube([98,23,7]);
    translate([0,-manifold,0]) union() {
      translate([1,0,0]) scale([.9,1,1]) rand_face("../../../lib/", seed_vect[0]);
      translate([10,0,0]) rand_face("../../../lib/", seed_vect[1]);
      translate([20,0,0]) rand_face("../../../lib/", seed_vect[2]);
      translate([30,0,0]) rand_face("../../../lib/", seed_vect[3]);
      translate([40,0,0]) rand_face("../../../lib/", seed_vect[4]);
      translate([50,0,0]) rand_face("../../../lib/", seed_vect[5]);
      translate([60,0,0]) rand_face("../../../lib/", seed_vect[6]);
      translate([70,0,0]) rand_face("../../../lib/", seed_vect[7]);
      translate([80,0,0]) rand_face("../../../lib/", seed_vect[8]);
      translate([90,0,0]) scale([.9,1,1]) rand_face("../../../lib/", seed_vect[9]);
    }
    translate([100,23+manifold,0]) rotate([0,0,180]) union() {
      translate([1,0,0]) scale([.9,1,1]) rand_face("../../../lib/", seed_vect[8]);
      translate([10,0,0]) rand_face("../../../lib/", seed_vect[11]);
      translate([20,0,0]) rand_face("../../../lib/", seed_vect[12]);
      translate([30,0,0]) rand_face("../../../lib/", seed_vect[13]);
      translate([40,0,0]) rand_face("../../../lib/", seed_vect[14]);
      translate([50,0,0]) rand_face("../../../lib/", seed_vect[15]);
      translate([60,0,0]) rand_face("../../../lib/", seed_vect[16]);
      translate([70,0,0]) rand_face("../../../lib/", seed_vect[17]);
      translate([80,0,0]) rand_face("../../../lib/", seed_vect[18]);
      translate([90,0,0]) scale([.9,1,1]) rand_face("../../../lib/", seed_vect[19]);
    }
    translate([1-manifold,24,0]) rotate([0,0,270]) union() {
      translate([1,0,7]) rotate([0,90,0]) scale([7/10,1,5/7]) rand_face("../../../lib/", seed_vect[20]);
      translate([6.1,0,0]) scale([1.25,1,1]) rand_face("../../../lib/", seed_vect[21]);
      translate([23.8,0,0]) rotate([0,270,0]) scale([7/10,1,5/7]) rand_face("../../../lib/", seed_vect[22]);
    }
    translate([99+manifold,-1,0]) rotate([0,0,90]) union() {
      translate([1,0,7]) rotate([0,90,0]) scale([7/10,1,5/7]) rand_face("../../../lib/", seed_vect[23]);
      translate([6.1,0,0]) scale([1.25,1,1]) rand_face("../../../lib/", seed_vect[24]);
      translate([23.8,0,0]) rotate([0,270,0]) scale([7/10,1,5/7]) rand_face("../../../lib/", seed_vect[25]);
    }
  }
}
      
module 4x1_static_wall_line(front, back, right, left, manifold=-0.05) {
  translate([0,1,0]) scale([1,1,1+sc]) union() {
    translate([1,0,0]) cube([98,23,7]);
    translate([0,-manifold,0]) union() {
      translate([1,0,0]) scale([.9,1,1]) static_face("../../../lib/", front[0]);
      translate([10,0,0]) static_face("../../../lib/", front[1]);
      translate([20,0,0]) static_face("../../../lib/", front[2]);
      translate([30,0,0]) static_face("../../../lib/", front[3]);
      translate([40,0,0]) static_face("../../../lib/", front[4]);
      translate([50,0,0]) static_face("../../../lib/", front[5]);
      translate([60,0,0]) static_face("../../../lib/", front[6]);
      translate([70,0,0]) static_face("../../../lib/", front[7]);
      translate([80,0,0]) static_face("../../../lib/", front[8]);
      translate([90,0,0]) scale([.9,1,1]) static_face("../../../lib/", front[9]);
    }
    translate([100,23+manifold,0]) rotate([0,0,180]) union() {
      translate([1,0,0]) scale([.9,1,1]) static_face("../../../lib/", back[0]);
      translate([10,0,0]) static_face("../../../lib/", back[1]);
      translate([20,0,0]) static_face("../../../lib/", back[2]);
      translate([30,0,0]) static_face("../../../lib/", back[3]);
      translate([40,0,0]) static_face("../../../lib/", back[4]);
      translate([50,0,0]) static_face("../../../lib/", back[5]);
      translate([60,0,0]) static_face("../../../lib/", back[6]);
      translate([70,0,0]) static_face("../../../lib/", back[7]);
      translate([80,0,0]) static_face("../../../lib/", back[8]);
      translate([90,0,0]) scale([.9,1,1]) static_face("../../../lib/", back[9]);
    }
    translate([1-manifold,24,0]) rotate([0,0,270]) union() {
      translate([1,0,7]) rotate([0,90,0]) scale([7/10,1,5/7]) static_face("../../../lib/", left[0]);
      translate([6.1,0,0]) scale([1.25,1,1]) static_face("../../../lib/", left[1]);
      translate([23.8,0,0]) rotate([0,270,0]) scale([7/10,1,5/7]) static_face("../../../lib/", left[2]);
    }
    translate([99+manifold,-1,0]) rotate([0,0,90]) union() {
      translate([1,0,7]) rotate([0,90,0]) scale([7/10,1,5/7]) static_face("../../../lib/", right[0]);
      translate([6.1,0,0]) scale([1.25,1,1]) static_face("../../../lib/", right[1]);
      translate([23.8,0,0]) rotate([0,270,0]) scale([7/10,1,5/7]) static_face("../../../lib/", right[2]);
    }
  }
}

module 4x1_stagger_wall_line(sc, seed, manifold=-0.05) {
  seed_vect = rands(0, 100, 26, seed=seed);
  translate([0,1,0]) scale([1,1,1+sc]) union() {
    translate([1,0,0]) cube([98,23,7]);
    translate([0,-manifold,0]) union() {
      translate([1,0,7]) rotate([0,90,0]) scale([7/10,1,5/7]) rand_face("../../../lib/", seed_vect[0]);
      translate([6,0,0]) scale([.9,1,1]) rand_face("../../../lib/", seed_vect[1]);
      translate([15,0,0]) rand_face("../../../lib/", seed_vect[2]);
      translate([25,0,0]) rand_face("../../../lib/", seed_vect[3]);
      translate([35,0,0]) rand_face("../../../lib/", seed_vect[4]);
      translate([45,0,0]) rand_face("../../../lib/", seed_vect[5]);
      translate([55,0,0]) rand_face("../../../lib/", seed_vect[6]);
      translate([65,0,0]) rand_face("../../../lib/", seed_vect[7]);
      translate([75,0,0]) rand_face("../../../lib/", seed_vect[8]);
      translate([85,0,0]) scale([.9,1,1]) rand_face("../../../lib/", seed_vect[9]);
      translate([94,0,7]) rotate([0,90,0]) scale([7/10,1,5/7]) rand_face("../../../lib/", seed_vect[10]);
    }
    translate([100,23+manifold,0]) rotate([0,0,180]) union() {
      translate([1,0,7]) rotate([0,90,0]) scale([7/10,1,5/7]) rand_face("../../../lib/", seed_vect[11]);
      translate([6,0,0]) scale([.9,1,1]) rand_face("../../../lib/", seed_vect[12]);
      translate([15,0,0]) rand_face("../../../lib/", seed_vect[13]);
      translate([25,0,0]) rand_face("../../../lib/", seed_vect[14]);
      translate([35,0,0]) rand_face("../../../lib/", seed_vect[15]);
      translate([45,0,0]) rand_face("../../../lib/", seed_vect[16]);
      translate([55,0,0]) rand_face("../../../lib/", seed_vect[17]);
      translate([65,0,0]) rand_face("../../../lib/", seed_vect[18]);
      translate([75,0,0]) rand_face("../../../lib/", seed_vect[19]);
      translate([85,0,0]) scale([.9,1,1]) rand_face("../../../lib/", seed_vect[20]);
      translate([94,0,7]) rotate([0,90,0]) scale([7/10,1,5/7]) rand_face("../../../lib/", seed_vect[21]);
    }

    translate([1-manifold,24,0]) rotate([0,0,270]) union() {
      translate([1,0,0]) scale([1.15,1,1]) rand_face("../../../lib/", seed_vect[22]);
      translate([12.5,0,0]) scale([1.15,1,1]) rand_face("../../../lib/", seed_vect[23]);
    }
    translate([99+manifold,-1,0]) rotate([0,0,90]) union() {
      translate([1,0,0]) scale([1.15,1,1]) rand_face("../../../lib/", seed_vect[24]);
      translate([12.5,0,0]) scale([1.15,1,1]) rand_face("../../../lib/", seed_vect[25]);
    }
  }
}

module 4x1_static_stagger_wall_line(front, back, right, left, manifold=-0.05) {
  translate([0,1,0]) scale([1,1,1+sc]) union() {
    translate([1,0,0]) cube([98,23,7]);
    translate([0,-manifold,0]) union() {
      translate([1,0,7]) rotate([0,90,0]) scale([7/10,1,5/7]) static_face("../../../lib/", front[0]);
      translate([6,0,0]) scale([.9,1,1]) static_face("../../../lib/", front[1]);
      translate([15,0,0]) static_face("../../../lib/", front[2]);
      translate([25,0,0]) static_face("../../../lib/", front[3]);
      translate([35,0,0]) static_face("../../../lib/", front[4]);
      translate([45,0,0]) static_face("../../../lib/", front[5]);
      translate([55,0,0]) static_face("../../../lib/", front[6]);
      translate([65,0,0]) static_face("../../../lib/", front[7]);
      translate([75,0,0]) static_face("../../../lib/", front[8]);
      translate([85,0,0]) scale([.9,1,1]) static_face("../../../lib/", front[9]);
      translate([94,0,7]) rotate([0,90,0]) scale([7/10,1,5/7]) static_face("../../../lib/", front[10]);
    }
    translate([100,23+manifold,0]) rotate([0,0,180]) union() {
      translate([1,0,7]) rotate([0,90,0]) scale([7/10,1,5/7]) static_face("../../../lib/", back[0]);
      translate([6,0,0]) scale([.9,1,1]) static_face("../../../lib/", back[1]);
      translate([15,0,0]) static_face("../../../lib/", back[2]);
      translate([25,0,0]) static_face("../../../lib/", back[3]);
      translate([35,0,0]) static_face("../../../lib/", back[4]);
      translate([45,0,0]) static_face("../../../lib/", back[5]);
      translate([55,0,0]) static_face("../../../lib/", back[6]);
      translate([65,0,0]) static_face("../../../lib/", back[7]);
      translate([75,0,0]) static_face("../../../lib/", back[8]);
      translate([85,0,0]) scale([.9,1,1]) static_face("../../../lib/", back[9]);
      translate([94,0,7]) rotate([0,90,0]) scale([7/10,1,5/7]) static_face("../../../lib/", back[10]);
    }

    translate([1-manifold,24,0]) rotate([0,0,270]) union() {
      translate([1,0,0]) scale([1.15,1,1]) static_face("../../../lib/", left[0]);
      translate([12.5,0,0]) scale([1.15,1,1]) static_face("../../../lib/", left[1]);
    }
    translate([99+manifold,-1,0]) rotate([0,0,90]) union() {
      translate([1,0,0]) scale([1.15,1,1]) static_face("../../../lib/", right[0]);
      translate([12.5,0,0]) scale([1.15,1,1]) static_face("../../../lib/", right[1]);
    }
  }
}

module 4x1_wall_top(seed, manifold=-0.05) {
  seed_vect = rands(0, 100, 31, seed=seed);
  translate([0,1,manifold]) rotate([-90,0,0]) scale([1,1,8.2/7]) union() {
    translate([1,0,0]) scale([.9,1,7/10]) rand_face("../../../lib/", seed_vect[0]);
    translate([10,0,0]) scale([1,1,7/10]) rand_face("../../../lib/", seed_vect[1]);
    translate([20,0,0]) scale([1,1,7/10]) rand_face("../../../lib/", seed_vect[2]);
    translate([30,0,0]) scale([1,1,7/10]) rand_face("../../../lib/", seed_vect[3]);
    translate([40,0,0]) scale([1,1,7/10]) rand_face("../../../lib/", seed_vect[4]);
    translate([50,0,0]) scale([1,1,7/10]) rand_face("../../../lib/", seed_vect[5]);
    translate([60,0,0]) scale([1,1,7/10]) rand_face("../../../lib/", seed_vect[6]);
    translate([70,0,0]) scale([1,1,7/10]) rand_face("../../../lib/", seed_vect[7]);
    translate([80,0,0]) scale([1,1,7/10]) rand_face("../../../lib/", seed_vect[8]);
    translate([90,0,0]) scale([.9,1,7/10]) rand_face("../../../lib/", seed_vect[9]);

    translate([1,0,14.7]) scale([.9,1,7/10]) rand_face("../../../lib/", seed_vect[10]);
    translate([10,0,14.7]) scale([1,1,7/10]) rand_face("../../../lib/", seed_vect[11]);
    translate([20,0,14.7]) scale([1,1,7/10]) rand_face("../../../lib/", seed_vect[12]);
    translate([30,0,14.7]) scale([1,1,7/10]) rand_face("../../../lib/", seed_vect[13]);
    translate([40,0,14.7]) scale([1,1,7/10]) rand_face("../../../lib/", seed_vect[14]);
    translate([50,0,14.7]) scale([1,1,7/10]) rand_face("../../../lib/", seed_vect[15]);
    translate([60,0,14.7]) scale([1,1,7/10]) rand_face("../../../lib/", seed_vect[16]);
    translate([70,0,14.7]) scale([1,1,7/10]) rand_face("../../../lib/", seed_vect[17]);
    translate([80,0,14.7]) scale([1,1,7/10]) rand_face("../../../lib/", seed_vect[18]);
    translate([90,0,14.7]) scale([.9,1,7/10]) rand_face("../../../lib/", seed_vect[19]);
  }

  translate([7,1,manifold]) rotate([-90,0,90]) scale([1,1,8.2/7]) union() {
    translate([5.8,0,0]) scale([1.15,1,7/10]) rand_face("../../../lib/", seed_vect[20]);
    translate([5.8,0,-8]) scale([1.15,1,1.10]) rand_face("../../../lib/", seed_vect[21]);
    translate([5.8,0,-16]) scale([1.15,1,1.10]) rand_face("../../../lib/", seed_vect[22]);
    translate([5.8,0,-24]) scale([1.15,1,1.10]) rand_face("../../../lib/", seed_vect[23]);
    translate([5.8,0,-32]) scale([1.15,1,1.10]) rand_face("../../../lib/", seed_vect[24]);
    translate([5.8,0,-40]) scale([1.15,1,1.10]) rand_face("../../../lib/", seed_vect[25]);
    translate([5.8,0,-48]) scale([1.15,1,1.10]) rand_face("../../../lib/", seed_vect[26]);
    translate([5.8,0,-56]) scale([1.15,1,1.10]) rand_face("../../../lib/", seed_vect[27]);
    translate([5.8,0,-64]) scale([1.15,1,1.10]) rand_face("../../../lib/", seed_vect[28]);
    translate([5.8,0,-73]) scale([1.15,1,1.20]) rand_face("../../../lib/", seed_vect[29]);
    translate([5.8,0,-78]) scale([1.15,1,7/10]) rand_face("../../../lib/", seed_vect[30]);
  }
}

module 4x1_static_wall_top(top, manifold=-0.05) {
  translate([0,1,manifold]) rotate([-90,0,0]) scale([1,1,8.2/7]) union() {
    translate([1,0,0]) scale([.9,1,7/10]) static_face("../../../lib/", top[0]);
    translate([10,0,0]) scale([1,1,7/10]) static_face("../../../lib/", top[1]);
    translate([20,0,0]) scale([1,1,7/10]) static_face("../../../lib/", top[2]);
    translate([30,0,0]) scale([1,1,7/10]) static_face("../../../lib/", top[3]);
    translate([40,0,0]) scale([1,1,7/10]) static_face("../../../lib/", top[4]);
    translate([50,0,0]) scale([1,1,7/10]) static_face("../../../lib/", top[5]);
    translate([60,0,0]) scale([1,1,7/10]) static_face("../../../lib/", top[6]);
    translate([70,0,0]) scale([1,1,7/10]) static_face("../../../lib/", top[7]);
    translate([80,0,0]) scale([1,1,7/10]) static_face("../../../lib/", top[8]);
    translate([90,0,0]) scale([.9,1,7/10]) static_face("../../../lib/", top[9]);

    translate([1,0,14.7]) scale([.9,1,7/10]) static_face("../../../lib/", top[10]);
    translate([10,0,14.7]) scale([1,1,7/10]) static_face("../../../lib/", top[11]);
    translate([20,0,14.7]) scale([1,1,7/10]) static_face("../../../lib/", top[12]);
    translate([30,0,14.7]) scale([1,1,7/10]) static_face("../../../lib/", top[13]);
    translate([40,0,14.7]) scale([1,1,7/10]) static_face("../../../lib/", top[14]);
    translate([50,0,14.7]) scale([1,1,7/10]) static_face("../../../lib/", top[15]);
    translate([60,0,14.7]) scale([1,1,7/10]) static_face("../../../lib/", top[16]);
    translate([70,0,14.7]) scale([1,1,7/10]) static_face("../../../lib/", top[17]);
    translate([80,0,14.7]) scale([1,1,7/10]) static_face("../../../lib/", top[18]);
    translate([90,0,14.7]) scale([.9,1,7/10]) static_face("../../../lib/", top[19]);
  }

  translate([7,1,manifold]) rotate([-90,0,90]) scale([1,1,8.2/7]) union() {
    translate([5.8,0,0]) scale([1.15,1,7/10]) static_face("../../../lib/", top[20]);
    translate([5.8,0,-8]) scale([1.15,1,1.10]) static_face("../../../lib/", top[21]);
    translate([5.8,0,-16]) scale([1.15,1,1.10]) static_face("../../../lib/", top[22]);
    translate([5.8,0,-24]) scale([1.15,1,1.10]) static_face("../../../lib/", top[23]);
    translate([5.8,0,-32]) scale([1.15,1,1.10]) static_face("../../../lib/", top[24]);
    translate([5.8,0,-40]) scale([1.15,1,1.10]) static_face("../../../lib/", top[25]);
    translate([5.8,0,-48]) scale([1.15,1,1.10]) static_face("../../../lib/", top[26]);
    translate([5.8,0,-56]) scale([1.15,1,1.10]) static_face("../../../lib/", top[27]);
    translate([5.8,0,-64]) scale([1.15,1,1.10]) static_face("../../../lib/", top[28]);
    translate([5.8,0,-73]) scale([1.15,1,1.20]) static_face("../../../lib/", top[29]);
    translate([5.8,0,-78]) scale([1.15,1,7/10]) static_face("../../../lib/", top[30]);
  }
}

module 4x1_staggered_wall_top(seed, manifold=-0.05) {
  seed_vect = rands(0, 100, 31, seed=seed);
  translate([25,0,0]) rotate([0,0,90]) union() {
    translate([0,1,manifold]) rotate([-90,0,0]) scale([1,1,8.2/7]) union() {
      translate([1,0,15.4]) scale([1.15,1,6/10]) rand_face("../../../lib/", seed_vect[0]);
      translate([12.5,0,15.4]) scale([1.15,1,6/10]) rand_face("../../../lib/", seed_vect[1]);
      translate([1,0,-64]) scale([1.15,1,6/10]) rand_face("../../../lib/", seed_vect[2]);
      translate([12.5,0,-64]) scale([1.15,1,6/10]) rand_face("../../../lib/", seed_vect[3]);
    }

    translate([7,1,manifold]) rotate([-90,0,90]) scale([1,1,8.2/7]) union() {
      translate([8.8,0,0]) scale([.9,1,7/10]) rand_face("../../../lib/", seed_vect[4]);
      translate([-1.2,0,0]) scale([1,1,7/10]) rand_face("../../../lib/", seed_vect[5]);
      translate([-11.2,0,0]) scale([1,1,7/10]) rand_face("../../../lib/", seed_vect[6]);
      translate([-21.2,0,0]) scale([1,1,7/10]) rand_face("../../../lib/", seed_vect[7]);
      translate([-31.2,0,0]) scale([1,1,7/10]) rand_face("../../../lib/", seed_vect[8]);
      translate([-41.2,0,0]) scale([1,1,7/10]) rand_face("../../../lib/", seed_vect[9]);
      translate([-51.2,0,0]) scale([1,1,7/10]) rand_face("../../../lib/", seed_vect[10]);
      translate([-61.2,0,0]) scale([1,1,7/10]) rand_face("../../../lib/", seed_vect[11]);
      translate([-70.2,0,0]) scale([.9,1,7/10]) rand_face("../../../lib/", seed_vect[12]);

      translate([8.8,0,-14.5]) scale([.9,1,7/10]) rand_face("../../../lib/", seed_vect[13]);
      translate([-1.2,0,-14.5]) scale([1,1,7/10]) rand_face("../../../lib/", seed_vect[14]);
      translate([-11.2,0,-14.5]) scale([1,1,7/10]) rand_face("../../../lib/", seed_vect[15]);
      translate([-21.2,0,-14.5]) scale([1,1,7/10]) rand_face("../../../lib/", seed_vect[16]);
      translate([-31.2,0,-14.5]) scale([1,1,7/10]) rand_face("../../../lib/", seed_vect[17]);
      translate([-41.2,0,-14.5]) scale([1,1,7/10]) rand_face("../../../lib/", seed_vect[18]);
      translate([-51.2,0,-14.5]) scale([1,1,7/10]) rand_face("../../../lib/", seed_vect[19]);
      translate([-61.2,0,-14.5]) scale([1,1,7/10]) rand_face("../../../lib/", seed_vect[20]);
      translate([-70.2,0,-14.5]) scale([.9,1,7/10]) rand_face("../../../lib/", seed_vect[21]);

      translate([8.8,0,-9.5]) scale([.9,1,1.35]) rand_face("../../../lib/", seed_vect[22]);
      translate([-1.2,0,-9.5]) scale([1,1,1.35]) rand_face("../../../lib/", seed_vect[23]);
      translate([-11.2,0,-9.5]) scale([1,1,1.35]) rand_face("../../../lib/", seed_vect[24]);
      translate([-21.2,0,-9.5]) scale([1,1,1.35]) rand_face("../../../lib/", seed_vect[25]);
      translate([-31.2,0,-9.5]) scale([1,1,1.35]) rand_face("../../../lib/", seed_vect[26]);
      translate([-41.2,0,-9.5]) scale([1,1,1.35]) rand_face("../../../lib/", seed_vect[27]);
      translate([-51.2,0,-9.5]) scale([1,1,1.35]) rand_face("../../../lib/", seed_vect[28]);
      translate([-61.2,0,-9.5]) scale([1,1,1.35]) rand_face("../../../lib/", seed_vect[29]);
      translate([-70.2,0,-9.5]) scale([.9,1,1.35]) rand_face("../../../lib/", seed_vect[30]);

    }
  }
}

module 4x1_static_staggered_wall_top(top, manifold=-0.05) {
  translate([25,0,0]) rotate([0,0,90]) union() {
    translate([0,1,manifold]) rotate([-90,0,0]) scale([1,1,8.2/7]) union() {
      translate([1,0,15.4]) scale([1.15,1,6/10]) static_face("../../../lib/", top[0]);
      translate([12.5,0,15.4]) scale([1.15,1,6/10]) static_face("../../../lib/", top[1]);
      translate([1,0,-64]) scale([1.15,1,6/10]) static_face("../../../lib/", top[2]);
      translate([12.5,0,-64]) scale([1.15,1,6/10]) static_face("../../../lib/", top[3]);
    }

    translate([7,1,manifold]) rotate([-90,0,90]) scale([1,1,8.2/7]) union() {
      translate([8.8,0,0]) scale([.9,1,7/10]) static_face("../../../lib/", top[4]);
      translate([-1.2,0,0]) scale([1,1,7/10]) static_face("../../../lib/", top[5]);
      translate([-11.2,0,0]) scale([1,1,7/10]) static_face("../../../lib/", top[6]);
      translate([-21.2,0,0]) scale([1,1,7/10]) static_face("../../../lib/", top[7]);
      translate([-31.2,0,0]) scale([1,1,7/10]) static_face("../../../lib/", top[8]);
      translate([-41.2,0,0]) scale([1,1,7/10]) static_face("../../../lib/", top[9]);
      translate([-51.2,0,0]) scale([1,1,7/10]) static_face("../../../lib/", top[10]);
      translate([-61.2,0,0]) scale([1,1,7/10]) static_face("../../../lib/", top[11]);
      translate([-70.2,0,0]) scale([.9,1,7/10]) static_face("../../../lib/", top[12]);

      translate([8.8,0,-14.5]) scale([.9,1,7/10]) static_face("../../../lib/", top[13]);
      translate([-1.2,0,-14.5]) scale([1,1,7/10]) static_face("../../../lib/", top[14]);
      translate([-11.2,0,-14.5]) scale([1,1,7/10]) static_face("../../../lib/", top[15]);
      translate([-21.2,0,-14.5]) scale([1,1,7/10]) static_face("../../../lib/", top[16]);
      translate([-31.2,0,-14.5]) scale([1,1,7/10]) static_face("../../../lib/", top[17]);
      translate([-41.2,0,-14.5]) scale([1,1,7/10]) static_face("../../../lib/", top[18]);
      translate([-51.2,0,-14.5]) scale([1,1,7/10]) static_face("../../../lib/", top[19]);
      translate([-61.2,0,-14.5]) scale([1,1,7/10]) static_face("../../../lib/", top[20]);
      translate([-70.2,0,-14.5]) scale([.9,1,7/10]) static_face("../../../lib/", top[21]);

      translate([8.8,0,-9.5]) scale([.9,1,1.35]) static_face("../../../lib/", top[22]);
      translate([-1.2,0,-9.5]) scale([1,1,1.35]) static_face("../../../lib/", top[23]);
      translate([-11.2,0,-9.5]) scale([1,1,1.35]) static_face("../../../lib/", top[24]);
      translate([-21.2,0,-9.5]) scale([1,1,1.35]) static_face("../../../lib/", top[25]);
      translate([-31.2,0,-9.5]) scale([1,1,1.35]) static_face("../../../lib/", top[26]);
      translate([-41.2,0,-9.5]) scale([1,1,1.35]) static_face("../../../lib/", top[27]);
      translate([-51.2,0,-9.5]) scale([1,1,1.35]) static_face("../../../lib/", top[28]);
      translate([-61.2,0,-9.5]) scale([1,1,1.35]) static_face("../../../lib/", top[29]);
      translate([-70.2,0,-9.5]) scale([.9,1,1.35]) static_face("../../../lib/", top[30]);

    }
  }
}

rend=false;
random=true;
staggered=false;
render_top=false;
front=[59,  0, 36, 57, 31, 24, 51, 35, 56, 37, 28];
back=[ 50, 54, 62,  5, 52, 48, 39, 59, 41, 12, 7];
right=[55, 34, 53];
left=[55, 34, 17];
top=[19, 25, 38, 50, 61, 46, 21, 26, 13, 39, 31, 22,  4,  1, 58, 25, 35, 61, 27, 8, 24, 3, 56, 44, 59, 50, 54, 62, 5, 52, 48, 39, 59, 41, 12, 7];
seed_vect=rands(0, 100, 2);

if(rend) {
  if(random) {
    if(staggered) {
      4x1_stagger_wall_line(0, seed_vect[0]);
      if(render_top) {
        translate([0,0,7]) 4x1_staggered_wall_top(seed_vect[1]);
      }
    } else {
      4x1_wall_line(0, seed_vect[0]);
      if(render_top) {
        translate([0,0,7]) 4x1_wall_top(seed_vect[1]);
      }
    }
  } else {
    if(staggered) {
      4x1_static_stagger_wall_line(front, back, right, left);
      if(render_top) {
        translate([0,0,7]) 4x1_static_staggered_wall_top(top);
      }
    } else {
      4x1_static_wall_line(front, back, right, left);
      if(render_top) {
        translate([0,0,7]) 4x1_static_wall_top(top);
      }
    }
  }
}


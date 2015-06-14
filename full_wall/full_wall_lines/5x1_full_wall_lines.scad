include <../../../lib/forge_lib.scad>

module 5x1_wall_line(sc, seed, manifold=-0.05) {
  seed_vect = rands(0, 100, 31, seed=seed);
  
  translate([0,1,0]) scale([1,1,1+sc]) union() {
    translate([1,0,0]) cube([123,23,7]);
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
      translate([90,0,0]) rand_face("../../../lib/", seed_vect[9]);
      translate([100,0,0]) rand_face("../../../lib/", seed_vect[10]);
      translate([110,0,0]) scale([.9,1,1]) rand_face("../../../lib/", seed_vect[11]);
      translate([119,0,7]) rotate([0,90,0]) scale([7/10,1,5/7]) rand_face("../../../lib/", seed_vect[12]);
    }
    translate([125,23+manifold,0]) rotate([0,0,180]) union() {
      translate([1,0,7]) rotate([0,90,0]) scale([7/10,1,5/7]) rand_face("../../../lib/", seed_vect[13]);
      translate([6,0,0]) scale([.9,1,1]) rand_face("../../../lib/", seed_vect[14]);
      translate([15,0,0]) rand_face("../../../lib/", seed_vect[15]);
      translate([25,0,0]) rand_face("../../../lib/", seed_vect[16]);
      translate([35,0,0]) rand_face("../../../lib/", seed_vect[17]);
      translate([45,0,0]) rand_face("../../../lib/", seed_vect[18]);
      translate([55,0,0]) rand_face("../../../lib/", seed_vect[19]);
      translate([65,0,0]) rand_face("../../../lib/", seed_vect[20]);
      translate([75,0,0]) rand_face("../../../lib/", seed_vect[21]);
      translate([85,0,0]) rand_face("../../../lib/", seed_vect[22]);
      translate([95,0,0]) rand_face("../../../lib/", seed_vect[23]);
      translate([105,0,0]) rand_face("../../../lib/", seed_vect[24]);
      translate([115,0,0]) scale([.9,1,1]) rand_face("../../../lib/", seed_vect[25]);
    }
    translate([1-manifold,24,0]) rotate([0,0,270]) union() {
      translate([1,0,7]) rotate([0,90,0]) scale([7/10,1,5/7]) rand_face("../../../lib/", seed_vect[26]);
      translate([6.1,0,0]) scale([1.25,1,1]) rand_face("../../../lib/", seed_vect[27]);
      translate([23.8,0,0]) rotate([0,270,0]) scale([7/10,1,5/7]) rand_face("../../../lib/", seed_vect[28]);
    }
    translate([124+manifold,-1,0]) rotate([0,0,90]) union() {
      translate([1,0,0]) scale([1.15,1,1]) rand_face("../../../lib/", seed_vect[29]);
      translate([12.5,0,0]) scale([1.15,1,1]) rand_face("../../../lib/", seed_vect[30]);
    }
  }
}
      
module 5x1_static_wall_line(front, back, right, left, manifold=-0.05) {
  translate([0,1,0]) scale([1,1,1+sc]) union() {
    translate([1,0,0]) cube([123,23,7]);
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
      translate([90,0,0]) static_face("../../../lib/", front[9]);
      translate([100,0,0]) static_face("../../../lib/", front[10]);
      translate([110,0,0]) scale([.9,1,1]) static_face("../../../lib/", front[11]);
      translate([119,0,7]) rotate([0,90,0]) scale([7/10,1,5/7]) static_face("../../../lib/", front[12]);
    }
    translate([125,23+manifold,0]) rotate([0,0,180]) union() {
      translate([1,0,7]) rotate([0,90,0]) scale([7/10,1,5/7]) static_face("../../../lib/", back[0]);
      translate([6,0,0]) scale([.9,1,1]) static_face("../../../lib/", back[1]);
      translate([15,0,0]) static_face("../../../lib/", back[2]);
      translate([25,0,0]) static_face("../../../lib/", back[3]);
      translate([35,0,0]) static_face("../../../lib/", back[4]);
      translate([45,0,0]) static_face("../../../lib/", back[5]);
      translate([55,0,0]) static_face("../../../lib/", back[6]);
      translate([65,0,0]) static_face("../../../lib/", back[7]);
      translate([75,0,0]) static_face("../../../lib/", back[8]);
      translate([85,0,0]) static_face("../../../lib/", back[9]);
      translate([95,0,0]) static_face("../../../lib/", back[10]);
      translate([105,0,0]) static_face("../../../lib/", back[11]);
      translate([115,0,0]) scale([.9,1,1]) static_face("../../../lib/", back[12]);
    }
    translate([1-manifold,24,0]) rotate([0,0,270]) union() {
      translate([1,0,7]) rotate([0,90,0]) scale([7/10,1,5/7]) static_face("../../../lib/", left[0]);
      translate([6.1,0,0]) scale([1.25,1,1]) static_face("../../../lib/", left[1]);
      translate([23.8,0,0]) rotate([0,270,0]) scale([7/10,1,5/7]) static_face("../../../lib/", left[2]);
    }
    translate([124+manifold,-1,0]) rotate([0,0,90]) union() {
      translate([1,0,0]) scale([1.15,1,1]) static_face("../../../lib/", right[0]);
      translate([12.5,0,0]) scale([1.15,1,1]) static_face("../../../lib/", right[1]);
    }
  }
}

module 5x1_stagger_wall_line(sc, seed, manifold=-0.05) {
  seed_vect = rands(0, 100, 31, seed=seed);
  translate([0,1,0]) scale([1,1,1+sc]) union() {
    translate([1,0,0]) cube([123,23,7]);
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
      translate([85,0,0]) rand_face("../../../lib/", seed_vect[9]);
      translate([95,0,0]) rand_face("../../../lib/", seed_vect[10]);
      translate([105,0,0]) rand_face("../../../lib/", seed_vect[11]);
      translate([115,0,0]) scale([.9,1,1]) rand_face("../../../lib/", seed_vect[12]);
    }
    translate([125,23+manifold,0]) rotate([0,0,180]) union() {
      translate([1,0,0]) scale([.9,1,1]) rand_face("../../../lib/", seed_vect[13]);
      translate([10,0,0]) rand_face("../../../lib/", seed_vect[14]);
      translate([20,0,0]) rand_face("../../../lib/", seed_vect[15]);
      translate([30,0,0]) rand_face("../../../lib/", seed_vect[16]);
      translate([40,0,0]) rand_face("../../../lib/", seed_vect[17]);
      translate([50,0,0]) rand_face("../../../lib/", seed_vect[18]);
      translate([60,0,0]) rand_face("../../../lib/", seed_vect[19]);
      translate([70,0,0]) rand_face("../../../lib/", seed_vect[20]);
      translate([80,0,0]) rand_face("../../../lib/", seed_vect[21]);
      translate([90,0,0]) rand_face("../../../lib/", seed_vect[22]);
      translate([100,0,0]) rand_face("../../../lib/", seed_vect[23]);
      translate([110,0,0]) scale([.9,1,1]) rand_face("../../../lib/", seed_vect[24]);
      translate([119,0,7]) rotate([0,90,0]) scale([7/10,1,5/7]) rand_face("../../../lib/", seed_vect[25]);
    }

    translate([1-manifold,24,0]) rotate([0,0,270]) union() {
      translate([1,0,0]) scale([1.15,1,1]) rand_face("../../../lib/", seed_vect[26]);
      translate([12.5,0,0]) scale([1.15,1,1]) rand_face("../../../lib/", seed_vect[27]);
    }
    translate([124+manifold,-1,0]) rotate([0,0,90]) union() {
      translate([1,0,7]) rotate([0,90,0]) scale([7/10,1,5/7]) rand_face("../../../lib/", seed_vect[28]);
      translate([6.1,0,0]) scale([1.25,1,1]) rand_face("../../../lib/", seed_vect[29]);
      translate([23.8,0,0]) rotate([0,270,0]) scale([7/10,1,5/7]) rand_face("../../../lib/", seed_vect[30]);
    }
  }
}

module 5x1_static_stagger_wall_line(front, back, right, left, manifold=-0.05) {
  translate([0,1,0]) scale([1,1,1+sc]) union() {
    translate([1,0,0]) cube([123,23,7]);
    translate([0,-manifold,0]) union() {
      translate([1,0,7]) rotate([0,90,0]) scale([7/10,1,5/7]) static_face("../../../lib/", back[0]);
      translate([6,0,0]) scale([.9,1,1]) static_face("../../../lib/", front[1]);
      translate([15,0,0]) static_face("../../../lib/", front[2]);
      translate([25,0,0]) static_face("../../../lib/", front[3]);
      translate([35,0,0]) static_face("../../../lib/", front[4]);
      translate([45,0,0]) static_face("../../../lib/", front[5]);
      translate([55,0,0]) static_face("../../../lib/", front[6]);
      translate([65,0,0]) static_face("../../../lib/", front[7]);
      translate([75,0,0]) static_face("../../../lib/", front[8]);
      translate([85,0,0]) static_face("../../../lib/", front[9]);
      translate([95,0,0]) static_face("../../../lib/", front[10]);
      translate([105,0,0]) static_face("../../../lib/", front[11]);
      translate([115,0,0]) scale([.9,1,1]) static_face("../../../lib/", front[12]);
    }
    translate([125,23+manifold,0]) rotate([0,0,180]) union() {
      translate([1,0,0]) scale([.9,1,1]) static_face("../../../lib/", back[0]);
      translate([10,0,0]) static_face("../../../lib/", back[1]);
      translate([20,0,0]) static_face("../../../lib/", back[2]);
      translate([30,0,0]) static_face("../../../lib/", back[3]);
      translate([40,0,0]) static_face("../../../lib/", back[4]);
      translate([50,0,0]) static_face("../../../lib/", back[5]);
      translate([60,0,0]) static_face("../../../lib/", back[6]);
      translate([70,0,0]) static_face("../../../lib/", back[7]);
      translate([80,0,0]) static_face("../../../lib/", back[8]);
      translate([90,0,0]) static_face("../../../lib/", back[9]);
      translate([100,0,0]) static_face("../../../lib/", back[10]);
      translate([110,0,0]) scale([.9,1,1]) static_face("../../../lib/", back[11]);
      translate([119,0,7]) rotate([0,90,0]) scale([7/10,1,5/7]) static_face("../../../lib/", back[12]);
    }
    translate([1-manifold,24,0]) rotate([0,0,270]) union() {
      translate([1,0,0]) scale([1.15,1,1]) static_face("../../../lib/", left[0]);
      translate([12.5,0,0]) scale([1.15,1,1]) static_face("../../../lib/", left[1]);
    }
    translate([124+manifold,-1,0]) rotate([0,0,90]) union() {
      translate([1,0,7]) rotate([0,90,0]) scale([7/10,1,5/7]) static_face("../../../lib/", right[0]);
      translate([6.1,0,0]) scale([1.25,1,1]) static_face("../../../lib/", right[1]);
      translate([23.8,0,0]) rotate([0,270,0]) scale([7/10,1,5/7]) static_face("../../../lib/", right[2]);
    }
  }
}

module 5x1_wall_top(seed, manifold=-0.05) {
  seed_vect = rands(0, 100, 39, seed=seed);
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
    translate([90,0,0]) scale([1,1,7/10]) rand_face("../../../lib/", seed_vect[9]);
    translate([100,0,0]) scale([1,1,7/10]) rand_face("../../../lib/", seed_vect[10]);
    translate([110,0,0]) scale([.8,1,7/10]) rand_face("../../../lib/", seed_vect[11]);

    translate([1,0,14.7]) scale([.9,1,7/10]) rand_face("../../../lib/", seed_vect[12]);
    translate([10,0,14.7]) scale([1,1,7/10]) rand_face("../../../lib/", seed_vect[13]);
    translate([20,0,14.7]) scale([1,1,7/10]) rand_face("../../../lib/", seed_vect[14]);
    translate([30,0,14.7]) scale([1,1,7/10]) rand_face("../../../lib/", seed_vect[15]);
    translate([40,0,14.7]) scale([1,1,7/10]) rand_face("../../../lib/", seed_vect[16]);
    translate([50,0,14.7]) scale([1,1,7/10]) rand_face("../../../lib/", seed_vect[17]);
    translate([60,0,14.7]) scale([1,1,7/10]) rand_face("../../../lib/", seed_vect[18]);
    translate([70,0,14.7]) scale([1,1,7/10]) rand_face("../../../lib/", seed_vect[19]);
    translate([80,0,14.7]) scale([1,1,7/10]) rand_face("../../../lib/", seed_vect[20]);
    translate([90,0,14.7]) scale([1,1,7/10]) rand_face("../../../lib/", seed_vect[21]);
    translate([100,0,14.7]) scale([1,1,7/10]) rand_face("../../../lib/", seed_vect[22]);
    translate([110,0,14.7]) scale([.8,1,7/10]) rand_face("../../../lib/", seed_vect[23]);
  }

  translate([7,1,manifold]) rotate([-90,0,90]) scale([1,1,8.2/7]) union() {
    translate([5.8,0,0]) scale([1.15,1,7/10]) rand_face("../../../lib/", seed_vect[24]);
    translate([5.8,0,-8]) scale([1.15,1,1.10]) rand_face("../../../lib/", seed_vect[25]);
    translate([5.8,0,-16]) scale([1.15,1,1.10]) rand_face("../../../lib/", seed_vect[26]);
    translate([5.8,0,-24]) scale([1.15,1,1.10]) rand_face("../../../lib/", seed_vect[27]);
    translate([5.8,0,-32]) scale([1.15,1,1.10]) rand_face("../../../lib/", seed_vect[28]);
    translate([5.8,0,-40]) scale([1.15,1,1.10]) rand_face("../../../lib/", seed_vect[29]);
    translate([5.8,0,-48]) scale([1.15,1,1.10]) rand_face("../../../lib/", seed_vect[30]);
    translate([5.8,0,-56]) scale([1.15,1,1.10]) rand_face("../../../lib/", seed_vect[31]);
    translate([5.8,0,-64]) scale([1.15,1,1.10]) rand_face("../../../lib/", seed_vect[32]);
    translate([5.8,0,-72]) scale([1.15,1,1.10]) rand_face("../../../lib/", seed_vect[33]);
    translate([5.8,0,-81]) scale([1.15,1,1.20]) rand_face("../../../lib/", seed_vect[34]);
    translate([5.8,0,-90]) scale([1.15,1,1.20]) rand_face("../../../lib/", seed_vect[35]);
    translate([5.8,0,-95]) scale([1.15,1,.7]) rand_face("../../../lib/", seed_vect[36]);
    translate([0,0,-100]) scale([1.15,1,7/10]) rand_face("../../../lib/", seed_vect[37]);
    translate([11.5,0,-100]) scale([1.15,1,7/10]) rand_face("../../../lib/", seed_vect[38]);
  }
}

module 5x1_static_wall_top(top, manifold=-0.05) {
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
    translate([90,0,0]) scale([1,1,7/10]) static_face("../../../lib/", top[9]);
    translate([100,0,0]) scale([1,1,7/10]) static_face("../../../lib/", top[10]);
    translate([110,0,0]) scale([.8,1,7/10]) static_face("../../../lib/", top[11]);

    translate([1,0,14.7]) scale([.9,1,7/10]) static_face("../../../lib/", top[12]);
    translate([10,0,14.7]) scale([1,1,7/10]) static_face("../../../lib/", top[13]);
    translate([20,0,14.7]) scale([1,1,7/10]) static_face("../../../lib/", top[14]);
    translate([30,0,14.7]) scale([1,1,7/10]) static_face("../../../lib/", top[15]);
    translate([40,0,14.7]) scale([1,1,7/10]) static_face("../../../lib/", top[16]);
    translate([50,0,14.7]) scale([1,1,7/10]) static_face("../../../lib/", top[17]);
    translate([60,0,14.7]) scale([1,1,7/10]) static_face("../../../lib/", top[18]);
    translate([70,0,14.7]) scale([1,1,7/10]) static_face("../../../lib/", top[19]);
    translate([80,0,14.7]) scale([1,1,7/10]) static_face("../../../lib/", top[20]);
    translate([90,0,14.7]) scale([1,1,7/10]) static_face("../../../lib/", top[21]);
    translate([100,0,14.7]) scale([1,1,7/10]) static_face("../../../lib/", top[22]);
    translate([110,0,14.7]) scale([.8,1,7/10]) static_face("../../../lib/", top[23]);
  }

  translate([7,1,manifold]) rotate([-90,0,90]) scale([1,1,8.2/7]) union() {
    translate([5.8,0,0]) scale([1.15,1,7/10]) static_face("../../../lib/", top[24]);
    translate([5.8,0,-8]) scale([1.15,1,1.10]) static_face("../../../lib/", top[25]);
    translate([5.8,0,-16]) scale([1.15,1,1.10]) static_face("../../../lib/", top[26]);
    translate([5.8,0,-24]) scale([1.15,1,1.10]) static_face("../../../lib/", top[27]);
    translate([5.8,0,-32]) scale([1.15,1,1.10]) static_face("../../../lib/", top[28]);
    translate([5.8,0,-40]) scale([1.15,1,1.10]) static_face("../../../lib/", top[29]);
    translate([5.8,0,-48]) scale([1.15,1,1.10]) static_face("../../../lib/", top[30]);
    translate([5.8,0,-56]) scale([1.15,1,1.10]) static_face("../../../lib/", top[31]);
    translate([5.8,0,-64]) scale([1.15,1,1.10]) static_face("../../../lib/", top[32]);
    translate([5.8,0,-72]) scale([1.15,1,1.10]) static_face("../../../lib/", top[33]);
    translate([5.8,0,-81]) scale([1.15,1,1.20]) static_face("../../../lib/", top[34]);
    translate([5.8,0,-90]) scale([1.15,1,1.20]) static_face("../../../lib/", top[35]);
    translate([5.8,0,-95]) scale([1.15,1,.7]) static_face("../../../lib/", top[36]);
    translate([0,0,-100]) scale([1.15,1,7/10]) static_face("../../../lib/", top[37]);
    translate([11.5,0,-100]) scale([1.15,1,7/10]) static_face("../../../lib/", top[38]);
  }
}

module 5x1_staggered_wall_top(seed, manifold=-0.05) {
  seed_vect = rands(0, 100, 41, seed=seed);
  translate([25,0,0]) rotate([0,0,90]) union() {
    translate([0,1,manifold]) rotate([-90,0,0]) scale([1,1,8.2/7]) union() {
      translate([1,0,15.4]) scale([1.15,1,6/10]) rand_face("../../../lib/", seed_vect[0]);
      translate([12.5,0,15.4]) scale([1.15,1,6/10]) rand_face("../../../lib/", seed_vect[1]);
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
      translate([-71.2,0,0]) scale([1,1,7/10]) rand_face("../../../lib/", seed_vect[13]);
      translate([-81.2,0,0]) scale([1,1,7/10]) rand_face("../../../lib/", seed_vect[14]);
      translate([-91.2,0,0]) scale([1,1,7/10]) rand_face("../../../lib/", seed_vect[15]);
      translate([-99.7,0,0]) scale([.85,1,7/10]) rand_face("../../../lib/", seed_vect[16]);

      translate([8.8,0,-14.5]) scale([.9,1,7/10]) rand_face("../../../lib/", seed_vect[17]);
      translate([-1.2,0,-14.5]) scale([1,1,7/10]) rand_face("../../../lib/", seed_vect[18]);
      translate([-11.2,0,-14.5]) scale([1,1,7/10]) rand_face("../../../lib/", seed_vect[19]);
      translate([-21.2,0,-14.5]) scale([1,1,7/10]) rand_face("../../../lib/", seed_vect[20]);
      translate([-31.2,0,-14.5]) scale([1,1,7/10]) rand_face("../../../lib/", seed_vect[21]);
      translate([-41.2,0,-14.5]) scale([1,1,7/10]) rand_face("../../../lib/", seed_vect[22]);
      translate([-51.2,0,-14.5]) scale([1,1,7/10]) rand_face("../../../lib/", seed_vect[23]);
      translate([-61.2,0,-14.5]) scale([1,1,7/10]) rand_face("../../../lib/", seed_vect[24]);
      translate([-71.2,0,-14.5]) scale([1,1,7/10]) rand_face("../../../lib/", seed_vect[25]);
      translate([-81.2,0,-14.5]) scale([1,1,7/10]) rand_face("../../../lib/", seed_vect[26]);
      translate([-91.2,0,-14.5]) scale([1,1,7/10]) rand_face("../../../lib/", seed_vect[27]);
      translate([-99.7,0,-14.5]) scale([.85,1,7/10]) rand_face("../../../lib/", seed_vect[28]);

      translate([8.8,0,-9.5]) scale([.9,1,1.35]) rand_face("../../../lib/", seed_vect[29]);
      translate([-1.2,0,-9.5]) scale([1,1,1.35]) rand_face("../../../lib/", seed_vect[30]);
      translate([-11.2,0,-9.5]) scale([1,1,1.35]) rand_face("../../../lib/", seed_vect[31]);
      translate([-21.2,0,-9.5]) scale([1,1,1.35]) rand_face("../../../lib/", seed_vect[32]);
      translate([-31.2,0,-9.5]) scale([1,1,1.35]) rand_face("../../../lib/", seed_vect[33]);
      translate([-41.2,0,-9.5]) scale([1,1,1.35]) rand_face("../../../lib/", seed_vect[34]);
      translate([-51.2,0,-9.5]) scale([1,1,1.35]) rand_face("../../../lib/", seed_vect[35]);
      translate([-61.2,0,-9.5]) scale([1,1,1.35]) rand_face("../../../lib/", seed_vect[36]);
      translate([-71.2,0,-9.5]) scale([1,1,1.35]) rand_face("../../../lib/", seed_vect[37]);
      translate([-81.2,0,-9.5]) scale([1,1,1.35]) rand_face("../../../lib/", seed_vect[38]);
      translate([-91.2,0,-9.5]) scale([1,1,1.35]) rand_face("../../../lib/", seed_vect[39]);
      translate([-99.7,0,-9.5]) scale([.85,1,1.35]) rand_face("../../../lib/", seed_vect[40]);
    }
  }
}

module 5x1_static_staggered_wall_top(top, manifold=-0.05) {
  translate([25,0,0]) rotate([0,0,90]) union() {
    translate([0,1,manifold]) rotate([-90,0,0]) scale([1,1,8.2/7]) union() {
      translate([1,0,15.4]) scale([1.15,1,6/10]) static_face("../../../lib/", top[0]);
      translate([12.5,0,15.4]) scale([1.15,1,6/10]) static_face("../../../lib/", top[1]);
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
      translate([-71.2,0,0]) scale([1,1,7/10]) static_face("../../../lib/", top[13]);
      translate([-81.2,0,0]) scale([1,1,7/10]) static_face("../../../lib/", top[14]);
      translate([-91.2,0,0]) scale([1,1,7/10]) static_face("../../../lib/", top[15]);
      translate([-99.7,0,0]) scale([.85,1,7/10]) static_face("../../../lib/", top[16]);

      translate([8.8,0,-14.5]) scale([.9,1,7/10]) static_face("../../../lib/", top[17]);
      translate([-1.2,0,-14.5]) scale([1,1,7/10]) static_face("../../../lib/", top[18]);
      translate([-11.2,0,-14.5]) scale([1,1,7/10]) static_face("../../../lib/", top[19]);
      translate([-21.2,0,-14.5]) scale([1,1,7/10]) static_face("../../../lib/", top[20]);
      translate([-31.2,0,-14.5]) scale([1,1,7/10]) static_face("../../../lib/", top[21]);
      translate([-41.2,0,-14.5]) scale([1,1,7/10]) static_face("../../../lib/", top[22]);
      translate([-51.2,0,-14.5]) scale([1,1,7/10]) static_face("../../../lib/", top[23]);
      translate([-61.2,0,-14.5]) scale([1,1,7/10]) static_face("../../../lib/", top[24]);
      translate([-71.2,0,-14.5]) scale([1,1,7/10]) static_face("../../../lib/", top[25]);
      translate([-81.2,0,-14.5]) scale([1,1,7/10]) static_face("../../../lib/", top[26]);
      translate([-91.2,0,-14.5]) scale([1,1,7/10]) static_face("../../../lib/", top[27]);
      translate([-99.7,0,-14.5]) scale([.85,1,7/10]) static_face("../../../lib/", top[28]);

      translate([8.8,0,-9.5]) scale([.9,1,1.35]) static_face("../../../lib/", top[29]);
      translate([-1.2,0,-9.5]) scale([1,1,1.35]) static_face("../../../lib/", top[30]);
      translate([-11.2,0,-9.5]) scale([1,1,1.35]) static_face("../../../lib/", top[31]);
      translate([-21.2,0,-9.5]) scale([1,1,1.35]) static_face("../../../lib/", top[32]);
      translate([-31.2,0,-9.5]) scale([1,1,1.35]) static_face("../../../lib/", top[33]);
      translate([-41.2,0,-9.5]) scale([1,1,1.35]) static_face("../../../lib/", top[34]);
      translate([-51.2,0,-9.5]) scale([1,1,1.35]) static_face("../../../lib/", top[35]);
      translate([-61.2,0,-9.5]) scale([1,1,1.35]) static_face("../../../lib/", top[36]);
      translate([-71.2,0,-9.5]) scale([1,1,1.35]) static_face("../../../lib/", top[37]);
      translate([-81.2,0,-9.5]) scale([1,1,1.35]) static_face("../../../lib/", top[38]);
      translate([-91.2,0,-9.5]) scale([1,1,1.35]) static_face("../../../lib/", top[39]);
      translate([-99.7,0,-9.5]) scale([.85,1,1.35]) static_face("../../../lib/", top[40]);
    }
  }
}

rend=false;
random=true;
staggered=false;
render_top=false;
front=[59,  0, 36, 57, 31, 24, 51, 35, 56, 37, 28, 26, 13];
back=[ 50, 54, 62,  5, 52, 48, 39, 59, 41, 12,  7, 39, 31];
right=[55, 34, 53];
left=[55, 34, 17];
top=[19, 25, 38, 50, 61, 46, 21, 26, 13, 39, 31, 22,  4,  1, 58, 25, 35, 61, 27, 8, 24, 3, 56, 44, 59, 50, 54, 62, 5, 52, 48, 39, 59, 41, 12, 7, 35, 25, 58, 42, 52];
seed_vect=rands(0, 100, 2);

if(rend) {
  if(random) {
    if(staggered) {
      5x1_stagger_wall_line(0, seed_vect[0]);
      if(render_top) {
        translate([0,0,7]) 5x1_staggered_wall_top(seed_vect[1]);
      }
    } else {
      5x1_wall_line(0, seed_vect[0]);
      if(render_top) {
        translate([0,0,7]) 5x1_wall_top(seed_vect[1]);
      }
    }
  } else {
    if(staggered) {
      5x1_static_stagger_wall_line(front, back, right, left);
      if(render_top) {
        translate([0,0,7]) 5x1_static_staggered_wall_top(top);
      }
    } else {
      5x1_static_wall_line(front, back, right, left);
      if(render_top) {
        translate([0,0,7]) 5x1_static_wall_top(top);
      }
    }
  }
}


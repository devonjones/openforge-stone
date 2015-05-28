include <../../../lib/forge_lib.scad>

module 2x_full_wall_line(sc, seed, manifold=-0.05) {
  seed_vect = rands(0, 100, 22, seed=seed);
  
  translate([0,1,0]) scale([1,1,1+sc]) union() {
    translate([1,0,0]) cube([48,48,7]);
    translate([0,-manifold,0]) union() {
      translate([1,0,0]) scale([.9,1,1]) rand_face("../../../lib/", seed_vect[0]);
      translate([10,0,0]) rand_face("../../../lib/", seed_vect[1]);
      translate([20,0,0]) rand_face("../../../lib/", seed_vect[2]);
      translate([30,0,0]) rand_face("../../../lib/", seed_vect[3]);
      translate([40,0,0]) scale([.9,1,1]) rand_face("../../../lib/", seed_vect[4]);

    }
    translate([50,48+manifold,0]) rotate([0,0,180]) union() {
      translate([1,0,0]) scale([.9,1,1]) rand_face("../../../lib/", seed_vect[5]);
      translate([10,0,0]) rand_face("../../../lib/", seed_vect[6]);
      translate([20,0,0]) rand_face("../../../lib/", seed_vect[7]);
      translate([30,0,0]) rand_face("../../../lib/", seed_vect[8]);
      translate([40,0,0]) scale([.9,1,1]) rand_face("../../../lib/", seed_vect[9]);
    }
    translate([1-manifold,48.9,0]) rotate([0,0,270]) union() {
      translate([1,0,7]) rotate([0,90,0]) scale([7/10,1,5/7]) rand_face("../../../lib/", seed_vect[10]);
      translate([6,0,0]) scale([.9,1,1]) rand_face("../../../lib/", seed_vect[11]);
      translate([15,0,0]) rand_face("../../../lib/", seed_vect[12]);
      translate([25,0,0]) rand_face("../../../lib/", seed_vect[13]);
      translate([35,0,0]) scale([.9,1,1]) rand_face("../../../lib/", seed_vect[14]);
      translate([49,0,0]) rotate([0,270,0]) scale([7/10,1,5/7]) rand_face("../../../lib/", seed_vect[15]);
    }
    translate([49+manifold,-1,0]) rotate([0,0,90]) union() {
      translate([1,0,7]) rotate([0,90,0]) scale([7/10,1,5/7]) rand_face("../../../lib/", seed_vect[16]);
      translate([6,0,0]) scale([.9,1,1]) rand_face("../../../lib/", seed_vect[17]);
      translate([15,0,0]) rand_face("../../../lib/", seed_vect[18]);
      translate([25,0,0]) rand_face("../../../lib/", seed_vect[19]);
      translate([35,0,0]) scale([.9,1,1]) rand_face("../../../lib/", seed_vect[20]);
      translate([49,0,0]) rotate([0,270,0]) scale([7/10,1,5/7]) rand_face("../../../lib/", seed_vect[21]);
    }
  }
}
      
module 2x_static_full_wall_line(front, back, right, left, manifold=-0.05) {
  translate([0,1,0]) scale([1,1,1]) union() {
    translate([1,0,0]) cube([48,48,7]);
    translate([0,-manifold,0]) union() {
      translate([1,0,0]) scale([.9,1,1]) static_face("../../../lib/", front[0]);
      translate([10,0,0]) static_face("../../../lib/", front[1]);
      translate([20,0,0]) static_face("../../../lib/", front[2]);
      translate([30,0,0]) static_face("../../../lib/", front[3]);
      translate([40,0,0]) scale([.9,1,1]) static_face("../../../lib/", front[4]);
    }
    translate([50,48+manifold,0]) rotate([0,0,180]) union() {
      translate([1,0,0]) scale([.9,1,1]) static_face("../../../lib/", back[0]);
      translate([10,0,0]) static_face("../../../lib/", back[1]);
      translate([20,0,0]) static_face("../../../lib/", back[2]);
      translate([30,0,0]) static_face("../../../lib/", back[3]);
      translate([40,0,0]) scale([.9,1,1]) static_face("../../../lib/", back[4]);
    }
    translate([1-manifold,48.9,0]) rotate([0,0,270]) union() {
      translate([1,0,7]) rotate([0,90,0]) scale([7/10,1,5/7]) static_face("../../../lib/", left[0]);
      translate([6,0,0]) scale([.9,1,1]) static_face("../../../lib/", left[1]);
      translate([15,0,0]) static_face("../../../lib/", left[2]);
      translate([25,0,0]) static_face("../../../lib/", left[3]);
      translate([35,0,0]) scale([.9,1,1]) static_face("../../../lib/", left[4]);
      translate([49,0,0]) rotate([0,270,0]) scale([7/10,1,5/7]) static_face("../../../lib/", left[5]);
    }
    translate([49+manifold,-1,0]) rotate([0,0,90]) union() {
      translate([1,0,7]) rotate([0,90,0]) scale([7/10,1,5/7]) rand_face("../../../lib/", right[0]);
      translate([6,0,0]) scale([.9,1,1]) static_face("../../../lib/", right[1]);
      translate([15,0,0]) static_face("../../../lib/", right[2]);
      translate([25,0,0]) static_face("../../../lib/", right[3]);
      translate([35,0,0]) scale([.9,1,1]) static_face("../../../lib/", right[4]);
      translate([49,0,0]) rotate([0,270,0]) scale([7/10,1,5/7]) static_face("../../../lib/", right[5]);
    }
  }
}

module 2x_stagger_full_wall_line(sc, seed, manifold=-0.05) {
  seed_vect = rands(0, 100, 22, seed=seed);
  
  translate([0,1,0]) scale([1,1,1+sc]) union() {
    translate([1,0,0]) cube([48,48,7]);
    translate([0,-manifold,0]) union() {
      translate([1,0,7]) rotate([0,90,0]) scale([7/10,1,5/7]) rand_face("../../../lib/", seed_vect[10]);
      translate([6,0,0]) scale([.9,1,1]) rand_face("../../../lib/", seed_vect[11]);
      translate([15,0,0]) rand_face("../../../lib/", seed_vect[12]);
      translate([25,0,0]) rand_face("../../../lib/", seed_vect[13]);
      translate([35,0,0]) scale([.9,1,1]) rand_face("../../../lib/", seed_vect[14]);
      translate([49,0,0]) rotate([0,270,0]) scale([7/10,1,5/7]) rand_face("../../../lib/", seed_vect[15]);
    }
    translate([50,48+manifold,0]) rotate([0,0,180]) union() {
      translate([1,0,7]) rotate([0,90,0]) scale([7/10,1,5/7]) rand_face("../../../lib/", seed_vect[16]);
      translate([6,0,0]) scale([.9,1,1]) rand_face("../../../lib/", seed_vect[17]);
      translate([15,0,0]) rand_face("../../../lib/", seed_vect[18]);
      translate([25,0,0]) rand_face("../../../lib/", seed_vect[19]);
      translate([35,0,0]) scale([.9,1,1]) rand_face("../../../lib/", seed_vect[20]);
      translate([49,0,0]) rotate([0,270,0]) scale([7/10,1,5/7]) rand_face("../../../lib/", seed_vect[21]);
    }
    translate([1-manifold,48.9,0]) rotate([0,0,270]) union() {
      translate([1,0,0]) scale([.9,1,1]) rand_face("../../../lib/", seed_vect[0]);
      translate([10,0,0]) rand_face("../../../lib/", seed_vect[1]);
      translate([20,0,0]) rand_face("../../../lib/", seed_vect[2]);
      translate([30,0,0]) rand_face("../../../lib/", seed_vect[3]);
      translate([40,0,0]) scale([.9,1,1]) rand_face("../../../lib/", seed_vect[4]);
    }
    translate([49+manifold,-1,0]) rotate([0,0,90]) union() {
      translate([1,0,0]) scale([.9,1,1]) rand_face("../../../lib/", seed_vect[5]);
      translate([10,0,0]) rand_face("../../../lib/", seed_vect[6]);
      translate([20,0,0]) rand_face("../../../lib/", seed_vect[7]);
      translate([30,0,0]) rand_face("../../../lib/", seed_vect[8]);
      translate([40,0,0]) scale([.9,1,1]) rand_face("../../../lib/", seed_vect[9]);
    }
  }
}

module 2x_static_stagger_full_wall_line(front, back, right, left, manifold=-0.05) {
  translate([0,1,0]) scale([1,1,1]) union() {
    translate([1,0,0]) cube([48,48,7]);
    translate([0,-manifold,0]) union() {
      translate([1,0,7]) rotate([0,90,0]) scale([7/10,1,5/7]) static_face("../../../lib/", front[0]);
      translate([6,0,0]) scale([.9,1,1]) static_face("../../../lib/", front[1]);
      translate([15,0,0]) static_face("../../../lib/", front[2]);
      translate([25,0,0]) static_face("../../../lib/", front[3]);
      translate([35,0,0]) scale([.9,1,1]) static_face("../../../lib/", front[4]);
      translate([49,0,0]) rotate([0,270,0]) scale([7/10,1,5/7]) static_face("../../../lib/", front[5]);

    }
    translate([50,48+manifold,0]) rotate([0,0,180]) union() {
      translate([1,0,7]) rotate([0,90,0]) scale([7/10,1,5/7]) rand_face("../../../lib/", back[0]);
      translate([6,0,0]) scale([.9,1,1]) static_face("../../../lib/", back[1]);
      translate([15,0,0]) static_face("../../../lib/", back[2]);
      translate([25,0,0]) static_face("../../../lib/", back[3]);
      translate([35,0,0]) scale([.9,1,1]) static_face("../../../lib/", back[4]);
      translate([49,0,0]) rotate([0,270,0]) scale([7/10,1,5/7]) static_face("../../../lib/", back[5]);
    }
    translate([1-manifold,48.9,0]) rotate([0,0,270]) union() {
      translate([1,0,0]) scale([.9,1,1]) static_face("../../../lib/", left[0]);
      translate([10,0,0]) static_face("../../../lib/", left[1]);
      translate([20,0,0]) static_face("../../../lib/", left[2]);
      translate([30,0,0]) static_face("../../../lib/", left[3]);
      translate([40,0,0]) scale([.9,1,1]) static_face("../../../lib/", left[4]);
    }
    translate([49+manifold,-1,0]) rotate([0,0,90]) union() {
      translate([1,0,0]) scale([.9,1,1]) static_face("../../../lib/", right[0]);
      translate([10,0,0]) static_face("../../../lib/", right[1]);
      translate([20,0,0]) static_face("../../../lib/", right[2]);
      translate([30,0,0]) static_face("../../../lib/", right[3]);
      translate([40,0,0]) scale([.9,1,1]) static_face("../../../lib/", right[4]);
    }
  }
}

module 2x_wall_top(seed, manifold=-0.05) {
  seed_vect = rands(0, 100, 7, seed=seed);
  translate([0,1,manifold]) rotate([-90,0,0]) scale([1,1,8.2/7]) union() {
    translate([1,0,0]) scale([1.15,1,7/10]) rand_face("../../../lib/", seed_vect[0]);
    translate([12.5,0,0]) scale([1.15,1,7/10]) rand_face("../../../lib/", seed_vect[1]);

    translate([1,0,14.7]) scale([1.15,1,7/10]) rand_face("../../../lib/", seed_vect[2]);
    translate([12.5,0,14.7]) scale([1.15,1,7/10]) rand_face("../../../lib/", seed_vect[3]);
  }

  translate([7,1,manifold]) rotate([-90,0,90]) scale([1,1,8.2/7]) union() {
    translate([5.8,0,0]) scale([1.15,1,7/10]) rand_face("../../../lib/", seed_vect[4]);
    translate([5.8,0,-14.5]) scale([1.15,1,7/10]) rand_face("../../../lib/", seed_vect[5]);

    translate([5.8,0,-9.5]) scale([1.15,1,1.35]) rand_face("../../../lib/", seed_vect[6]);
  }
}

module 2x_static_wall_top(top, manifold=-0.05) {
  translate([0,1,manifold]) rotate([-90,0,0]) scale([1,1,8.2/7]) union() {
    translate([1,0,0]) scale([1.15,1,7/10]) static_face("../../../lib/", top[0]);
    translate([12.5,0,0]) scale([1.15,1,7/10]) static_face("../../../lib/", top[1]);

    translate([1,0,14.5]) scale([1.15,1,7/10]) static_face("../../../lib/", top[2]);
    translate([12.5,0,14.5]) scale([1.15,1,7/10]) static_face("../../../lib/", top[3]);
  }

  translate([7,1,manifold]) rotate([-90,0,90]) scale([1,1,8.2/7]) union() {
    translate([5.8,0,0]) scale([1.15,1,7/10]) static_face("../../../lib/", top[4]);
    translate([5.8,0,-14.5]) scale([1.15,1,7/10]) static_face("../../../lib/", top[5]);

    translate([5.8,0,-9.5]) scale([1.15,1,1.35]) static_face("../../../lib/", top[6]);
  }
}

module 2x_staggered_wall_top(seed, manifold=-0.05) {
  seed_vect = rands(0, 100, 32, seed=seed);

  translate([25,0,0]) rotate([0,0,90]) union() {
    translate([0,1,manifold]) rotate([-90,0,0]) scale([1,1,8.2/7]) union() {
      translate([1,0,-21.3]) scale([.9,1,6/10]) rand_face("../../../lib/", seed_vect[0]);
      translate([10,0,-21.3]) scale([1,1,6/10]) rand_face("../../../lib/", seed_vect[1]);
      translate([20,0,-21.3]) scale([1,1,6/10]) rand_face("../../../lib/", seed_vect[2]);
      translate([30,0,-21.3]) scale([1,1,6/10]) rand_face("../../../lib/", seed_vect[3]);
      translate([40,0,-21.3]) scale([.9,1,6/10]) rand_face("../../../lib/", seed_vect[4]);

      translate([1,0,15.3]) scale([.9,1,6/10]) rand_face("../../../lib/", seed_vect[5]);
      translate([10,0,15.3]) scale([1,1,6/10]) rand_face("../../../lib/", seed_vect[6]);
      translate([20,0,15.3]) scale([1,1,6/10]) rand_face("../../../lib/", seed_vect[7]);
      translate([30,0,15.3]) scale([1,1,6/10]) rand_face("../../../lib/", seed_vect[8]);
      translate([40,0,15.3]) scale([.9,1,6/10]) rand_face("../../../lib/", seed_vect[9]);
    }

    translate([7,1,manifold]) rotate([-90,0,90]) scale([1,1,8.2/7]) union() {
      translate([9,0,0]) scale([.9,1,7/10]) rand_face("../../../lib/", seed_vect[10]);
      translate([9,0,-10]) scale([.9,1,1.42]) rand_face("../../../lib/", seed_vect[11]);
      translate([9,0,-20]) scale([.9,1,1.42]) rand_face("../../../lib/", seed_vect[12]);
      translate([9,0,-30]) scale([.9,1,1.42]) rand_face("../../../lib/", seed_vect[13]);
      translate([9,0,-35.5]) scale([.9,1,7/10]) rand_face("../../../lib/", seed_vect[14]);

      translate([9-10,0,0]) scale([1,1,7/10]) rand_face("../../../lib/", seed_vect[15]);
      translate([9-10,0,-10]) scale([1,1,1.42]) rand_face("../../../lib/", seed_vect[16]);
      translate([9-10,0,-20]) scale([1,1,1.42]) rand_face("../../../lib/", seed_vect[17]);
      translate([9-10,0,-30]) scale([1,1,1.42]) rand_face("../../../lib/", seed_vect[18]);
      translate([9-10,0,-35.5]) scale([1,1,7/10]) rand_face("../../../lib/", seed_vect[19]);

      translate([9-20,0,0]) scale([1,1,7/10]) rand_face("../../../lib/", seed_vect[20]);
      translate([9-20,0,-10]) scale([1,1,1.42]) rand_face("../../../lib/", seed_vect[21]);
      translate([9-20,0,-20]) scale([1,1,1.42]) rand_face("../../../lib/", seed_vect[22]);
      translate([9-20,0,-30]) scale([1,1,1.42]) rand_face("../../../lib/", seed_vect[23]);
      translate([9-20,0,-35.5]) scale([1,1,7/10]) rand_face("../../../lib/", seed_vect[24]);

      translate([9-29,0,0]) scale([.9,1,7/10]) rand_face("../../../lib/", seed_vect[25]);
      translate([9-29,0,-10]) scale([.9,1,1.42]) rand_face("../../../lib/", seed_vect[26]);
      translate([9-29,0,-20]) scale([.9,1,1.42]) rand_face("../../../lib/", seed_vect[27]);
      translate([9-29,0,-30]) scale([.9,1,1.42]) rand_face("../../../lib/", seed_vect[28]);
      translate([9-29,0,-35.5]) scale([.9,1,7/10]) rand_face("../../../lib/", seed_vect[29]);
    }
  }
}

module 2x_static_staggered_wall_top(top, manifold=-0.05) {
  translate([25,0,0]) rotate([0,0,90]) union() {
    translate([0,1,manifold]) rotate([-90,0,0]) scale([1,1,8.2/7]) union() {
      translate([1,0,-21.3]) scale([.9,1,6/10]) static_face("../../../lib/", top[0]);
      translate([10,0,-21.3]) scale([1,1,6/10]) static_face("../../../lib/", top[1]);
      translate([20,0,-21.3]) scale([1,1,6/10]) static_face("../../../lib/", top[2]);
      translate([30,0,-21.3]) scale([1,1,6/10]) static_face("../../../lib/", top[3]);
      translate([40,0,-21.3]) scale([.9,1,6/10]) static_face("../../../lib/", top[4]);

      translate([1,0,15.3]) scale([.9,1,6/10]) static_face("../../../lib/", top[5]);
      translate([10,0,15.3]) scale([1,1,6/10]) static_face("../../../lib/", top[6]);
      translate([20,0,15.3]) scale([1,1,6/10]) static_face("../../../lib/", top[7]);
      translate([30,0,15.3]) scale([1,1,6/10]) static_face("../../../lib/", top[8]);
      translate([40,0,15.3]) scale([.9,1,6/10]) static_face("../../../lib/", top[9]);
    }

    translate([7,1,manifold]) rotate([-90,0,90]) scale([1,1,8.2/7]) union() {
      translate([9,0,0]) scale([.9,1,7/10]) static_face("../../../lib/", top[10]);
      translate([9,0,-10]) scale([.9,1,1.42]) static_face("../../../lib/", top[11]);
      translate([9,0,-20]) scale([.9,1,1.42]) static_face("../../../lib/", top[12]);
      translate([9,0,-30]) scale([.9,1,1.42]) static_face("../../../lib/", top[13]);
      translate([9,0,-35.5]) scale([.9,1,7/10]) static_face("../../../lib/", top[14]);

      translate([9-10,0,0]) scale([1,1,7/10]) static_face("../../../lib/", top[15]);
      translate([9-10,0,-10]) scale([1,1,1.42]) static_face("../../../lib/", top[16]);
      translate([9-10,0,-20]) scale([1,1,1.42]) static_face("../../../lib/", top[17]);
      translate([9-10,0,-30]) scale([1,1,1.42]) static_face("../../../lib/", top[18]);
      translate([9-10,0,-35.5]) scale([1,1,7/10]) static_face("../../../lib/", top[19]);

      translate([9-20,0,0]) scale([1,1,7/10]) static_face("../../../lib/", top[20]);
      translate([9-20,0,-10]) scale([1,1,1.42]) static_face("../../../lib/", top[21]);
      translate([9-20,0,-20]) scale([1,1,1.42]) static_face("../../../lib/", top[22]);
      translate([9-20,0,-30]) scale([1,1,1.42]) static_face("../../../lib/", top[23]);
      translate([9-20,0,-35.5]) scale([1,1,7/10]) static_face("../../../lib/", top[24]);

      translate([9-29,0,0]) scale([.9,1,7/10]) static_face("../../../lib/", top[25]);
      translate([9-29,0,-10]) scale([.9,1,1.42]) static_face("../../../lib/", top[26]);
      translate([9-29,0,-20]) scale([.9,1,1.42]) static_face("../../../lib/", top[27]);
      translate([9-29,0,-30]) scale([.9,1,1.42]) static_face("../../../lib/", top[28]);
      translate([9-29,0,-35.5]) scale([.9,1,7/10]) static_face("../../../lib/", top[29]);
    }
  }
}

rend=true;
random=true;
staggered=true;
render_top=true;
front=[59, 0, 36, 57, 31, 24, 51, 35, 56];
back=[50, 54, 62, 5, 52, 48, 39, 59, 41];
right=[7, 31, 44, 22, 34, 12];
left=[37, 13, 1, 35, 27, 58, 40, 53, 30];
top=[1, 26, 13, 39, 31, 22, 4, 1, 58, 24, 12, 23, 50, 57, 60, 51, 33, 28, 25, 31, 12, 29, 24, 19, 9, 8, 55, 12, 45,33];
seed_vect=rands(0, 100, 2);

if(rend) {
  if(random) {
    if(staggered) {
      2x_stagger_full_wall_line(0, seed_vect[0]);
      if(render_top) {
        translate([0,0,7]) 2x_staggered_wall_top(seed_vect[1]);
      }
    } else {
      2x_full_wall_line(0, seed_vect[0]);
      if(render_top) {
        translate([0,0,7]) 2x_wall_top(seed_vect[1]);
      }
    }
  } else {
    if(staggered) {
      2x_static_stagger_full_wall_line(front, back, right, left);
      if(render_top) {
        translate([0,0,7]) 2x_static_staggered_wall_top(top);
      }
    } else {
      2x_static_full_wall_line(front, back, right, left);
      if(render_top) {
        translate([0,0,7]) 2x_static_wall_top(top);
      }
    }
  }
}


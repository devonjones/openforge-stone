include <../../../lib/forge_lib.scad>

module 2x1_wall_line(sc, seed, manifold=-0.05) {
  seed_vect = rands(0, 100, 16, seed=seed);
  
  translate([0,1,0]) scale([1,1,1+sc]) union() {
    translate([1,0,0]) cube([48,23,7]);
    translate([0,-manifold,0]) union() {
      translate([1,0,0]) scale([.9,1,1]) rand_face("../../../lib/", seed_vect[0]);
      translate([10,0,0]) rand_face("../../../lib/", seed_vect[1]);
      translate([20,0,0]) rand_face("../../../lib/", seed_vect[2]);
      translate([30,0,0]) rand_face("../../../lib/", seed_vect[3]);
      translate([40,0,0]) scale([.9,1,1]) rand_face("../../../lib/", seed_vect[4]);
    }
    translate([50,23+manifold,0]) rotate([0,0,180]) union() {
      translate([1,0,0]) scale([.9,1,1]) rand_face("../../../lib/", seed_vect[5]);
      translate([10,0,0]) rand_face("../../../lib/", seed_vect[6]);
      translate([20,0,0]) rand_face("../../../lib/", seed_vect[7]);
      translate([30,0,0]) rand_face("../../../lib/", seed_vect[8]);
      translate([40,0,0]) scale([.9,1,1]) rand_face("../../../lib/", seed_vect[9]);

    }
    translate([1-manifold,24,0]) rotate([0,0,270]) union() {
      translate([1,0,7]) rotate([0,90,0]) scale([7/10,1,5/7]) rand_face("../../../lib/", seed_vect[10]);
      translate([6.1,0,0]) scale([1.25,1,1]) rand_face("../../../lib/", seed_vect[11]);
      translate([23.8,0,0]) rotate([0,270,0]) scale([7/10,1,5/7]) rand_face("../../../lib/", seed_vect[12]);
    }
    translate([49+manifold,-1,0]) rotate([0,0,90]) union() {
      translate([1,0,7]) rotate([0,90,0]) scale([7/10,1,5/7]) rand_face("../../../lib/", seed_vect[13]);
      translate([6.1,0,0]) scale([1.25,1,1]) rand_face("../../../lib/", seed_vect[14]);
      translate([23.8,0,0]) rotate([0,270,0]) scale([7/10,1,5/7]) rand_face("../../../lib/", seed_vect[15]);
    }
  }
}
      
module 2x1_static_wall_line(front, back, right, left, manifold=-0.05) {
  translate([0,1,0]) scale([1,1,1]) union() {
    translate([1,0,0]) cube([48,23,7]);
    translate([0,-manifold,0]) union() {
      translate([1,0,0]) scale([.9,1,1]) static_face("../../../lib/", front[0]);
      translate([10,0,0]) static_face("../../../lib/", front[1]);
      translate([20,0,0]) static_face("../../../lib/", front[2]);
      translate([30,0,0]) static_face("../../../lib/", front[3]);
      translate([40,0,0]) scale([.9,1,1]) static_face("../../../lib/", front[4]);
    }
    translate([50,23+manifold,0]) rotate([0,0,180]) union() {
      translate([1,0,0]) scale([.9,1,1]) static_face("../../../lib/", back[0]);
      translate([10,0,0]) static_face("../../../lib/", back[1]);
      translate([20,0,0]) static_face("../../../lib/", back[2]);
      translate([30,0,0]) static_face("../../../lib/", back[3]);
      translate([40,0,0]) scale([.9,1,1]) static_face("../../../lib/", back[4]);
    }
    translate([1-manifold,24,0]) rotate([0,0,270]) union() {
      translate([1,0,7]) rotate([0,90,0]) scale([7/10,1,5/7]) static_face("../../../lib/", left[0]);
      translate([6.1,0,0]) scale([1.25,1,1]) static_face("../../../lib/", left[1]);
      translate([23.8,0,0]) rotate([0,270,0]) scale([7/10,1,5/7]) static_face("../../../lib/", left[2]);
    }
    translate([49+manifold,-1,0]) rotate([0,0,90]) union() {
      translate([1,0,7]) rotate([0,90,0]) scale([7/10,1,5/7]) static_face("../../../lib/", right[0]);
      translate([6.1,0,0]) scale([1.25,1,1]) static_face("../../../lib/", right[1]);
      translate([23.8,0,0]) rotate([0,270,0]) scale([7/10,1,5/7]) static_face("../../../lib/", right[2]);
    }

  }
}

module 2x1_stagger_wall_line(sc, seed, manifold=-0.05) {
  seed_vect = rands(0, 100, 16, seed=seed);
  translate([0,1,0]) scale([1,1,1+sc]) union() {
    translate([1,0,0]) cube([48,23,7]);
    translate([0,-manifold,0]) union() {
      translate([1,0,7]) rotate([0,90,0]) scale([7/10,1,5/7]) rand_face("../../../lib/", seed_vect[0]);
      translate([6,0,0]) scale([.9,1,1]) rand_face("../../../lib/", seed_vect[1]);
      translate([15,0,0]) rand_face("../../../lib/", seed_vect[2]);
      translate([25,0,0]) rand_face("../../../lib/", seed_vect[3]);
      translate([35,0,0]) scale([.9,1,1]) rand_face("../../../lib/", seed_vect[4]);
      translate([49,0,0]) rotate([0,270,0]) scale([7/10,1,5/7]) rand_face("../../../lib/", seed_vect[5]);
    }
    translate([50,23+manifold,0]) rotate([0,0,180]) union() {
      translate([1,0,7]) rotate([0,90,0]) scale([7/10,1,5/7]) rand_face("../../../lib/", seed_vect[6]);
      translate([6,0,0]) scale([.9,1,1]) rand_face("../../../lib/", seed_vect[7]);
      translate([15,0,0]) rand_face("../../../lib/", seed_vect[8]);
      translate([25,0,0]) rand_face("../../../lib/", seed_vect[9]);
      translate([35,0,0]) scale([.9,1,1]) rand_face("../../../lib/", seed_vect[10]);
      translate([49,0,0]) rotate([0,270,0]) scale([7/10,1,5/7]) rand_face("../../../lib/", seed_vect[11]);
    }

    translate([1-manifold,24,0]) rotate([0,0,270]) union() {
      translate([1,0,0]) scale([1.15,1,1]) rand_face("../../../lib/", seed_vect[12]);
      translate([12.5,0,0]) scale([1.15,1,1]) rand_face("../../../lib/", seed_vect[13]);
    }
    translate([49+manifold,-1,0]) rotate([0,0,90]) union() {
      translate([1,0,0]) scale([1.15,1,1]) rand_face("../../../lib/", seed_vect[14]);
      translate([12.5,0,0]) scale([1.15,1,1]) rand_face("../../../lib/", seed_vect[15]);
    }
  }
}

module 2x1_static_stagger_wall_line(front, back, right, left, manifold=-0.05) {
  translate([0,1,0]) scale([1,1,1]) union() {
    translate([1,0,0]) cube([48,23,7]);
    translate([0,-manifold,0]) union() {
      translate([1,0,7]) rotate([0,90,0]) scale([7/10,1,5/7]) static_face("../../../lib/", front[0]);
      translate([6,0,0]) scale([.9,1,1]) static_face("../../../lib/", front[1]);
      translate([15,0,0]) static_face("../../../lib/", front[2]);
      translate([25,0,0]) static_face("../../../lib/", front[3]);
      translate([35,0,0]) scale([.9,1,1]) static_face("../../../lib/", front[4]);
      translate([49,0,0]) rotate([0,270,0]) scale([7/10,1,5/7]) static_face("../../../lib/", front[5]);
    }
    translate([50,23+manifold,0]) rotate([0,0,180]) union() {
      translate([1,0,7]) rotate([0,90,0]) scale([7/10,1,5/7]) rand_face("../../../lib/", back[0]);
      translate([6,0,0]) scale([.9,1,1]) static_face("../../../lib/", back[1]);
      translate([15,0,0]) static_face("../../../lib/", back[2]);
      translate([25,0,0]) static_face("../../../lib/", back[3]);
      translate([35,0,0]) scale([.9,1,1]) static_face("../../../lib/", back[4]);
      translate([49,0,0]) rotate([0,270,0]) scale([7/10,1,5/7]) static_face("../../../lib/", back[5]);
    }

    translate([1-manifold,24,0]) rotate([0,0,270]) union() {
      translate([1,0,0]) scale([1.15,1,1]) static_face("../../../lib/", left[0]);
      translate([12.5,0,0]) scale([1.15,1,1]) static_face("../../../lib/", left[1]);
    }
    translate([49+manifold,-1,0]) rotate([0,0,90]) union() {
      translate([1,0,0]) scale([1.15,1,1]) static_face("../../../lib/", right[0]);
      translate([12.5,0,0]) scale([1.15,1,1]) static_face("../../../lib/", right[1]);
    }
  }
}

module 2x1_wall_top(seed, manifold=-0.05) {
  seed_vect = rands(0, 100, 15, seed=seed);
  translate([0,1,manifold]) rotate([-90,0,0]) scale([1,1,8.2/7]) union() {
    translate([1,0,0]) scale([.9,1,7/10]) rand_face("../../../lib/", seed_vect[0]);
    translate([10,0,0]) scale([1,1,7/10]) rand_face("../../../lib/", seed_vect[1]);
    translate([20,0,0]) scale([1,1,7/10]) rand_face("../../../lib/", seed_vect[2]);
    translate([30,0,0]) scale([1,1,7/10]) rand_face("../../../lib/", seed_vect[3]);
    translate([40,0,0]) scale([.9,1,7/10]) rand_face("../../../lib/", seed_vect[4]);

    #translate([1,0,14.7]) scale([.9,1,7/10]) rand_face("../../../lib/", seed_vect[5]);
    translate([10,0,14.7]) scale([1,1,7/10]) rand_face("../../../lib/", seed_vect[6]);
    translate([20,0,14.7]) scale([1,1,7/10]) rand_face("../../../lib/", seed_vect[7]);
    translate([30,0,14.7]) scale([1,1,7/10]) rand_face("../../../lib/", seed_vect[8]);
    translate([40,0,14.7]) scale([.9,1,7/10]) rand_face("../../../lib/", seed_vect[9]);
  }

  translate([7,1,manifold]) rotate([-90,0,90]) scale([1,1,8.2/7]) union() {
    translate([5.8,0,0]) scale([1.15,1,7/10]) rand_face("../../../lib/", seed_vect[10]);
    translate([5.8,0,-10]) scale([1.15,1,1.40]) rand_face("../../../lib/", seed_vect[11]);
    translate([5.8,0,-20]) scale([1.15,1,1.40]) rand_face("../../../lib/", seed_vect[12]);
    translate([5.8,0,-30]) scale([1.15,1,1.40]) rand_face("../../../lib/", seed_vect[13]);
    translate([5.8,0,-35.5]) scale([1.15,1,7/10]) rand_face("../../../lib/", seed_vect[14]);
  }
}

module 2x1_static_wall_top(top, manifold=-0.05) {
  translate([0,1,manifold]) rotate([-90,0,0]) scale([1,1,8.2/7]) union() {
    translate([1,0,0]) scale([.9,1,7/10]) static_face("../../../lib/", top[0]);
    translate([10,0,0]) scale([1,1,7/10]) static_face("../../../lib/", top[1]);
    translate([20,0,0]) scale([1,1,7/10]) static_face("../../../lib/", top[2]);
    translate([30,0,0]) scale([1,1,7/10]) static_face("../../../lib/", top[3]);
    translate([40,0,0]) scale([.9,1,7/10]) static_face("../../../lib/", top[4]);

    #translate([1,0,14.7]) scale([.9,1,7/10]) static_face("../../../lib/", top[5]);
    translate([10,0,14.7]) scale([1,1,7/10]) static_face("../../../lib/", top[6]);
    translate([20,0,14.7]) scale([1,1,7/10]) static_face("../../../lib/", top[7]);
    translate([30,0,14.7]) scale([1,1,7/10]) static_face("../../../lib/", top[8]);
    translate([40,0,14.7]) scale([.9,1,7/10]) static_face("../../../lib/", top[9]);
  }

  translate([7,1,manifold]) rotate([-90,0,90]) scale([1,1,8.2/7]) union() {
    translate([5.8,0,0]) scale([1.15,1,7/10]) static_face("../../../lib/", top[10]);
    translate([5.8,0,-10]) scale([1.15,1,1.40]) static_face("../../../lib/", top[11]);
    translate([5.8,0,-20]) scale([1.15,1,1.40]) static_face("../../../lib/", top[12]);
    translate([5.8,0,-30]) scale([1.15,1,1.40]) static_face("../../../lib/", top[13]);
    translate([5.8,0,-35.5]) scale([1.15,1,7/10]) static_face("../../../lib/", top[14]);
  }
}

module 2x1_staggered_wall_top(seed, manifold=-0.05) {
  seed_vect = rands(0, 100, 16, seed=seed);
  translate([25,0,0]) rotate([0,0,90]) union() {
    translate([0,1,manifold]) rotate([-90,0,0]) scale([1,1,8.2/7]) union() {
      translate([1,0,-21.3]) scale([1.15,1,6/10]) rand_face("../../../lib/", seed_vect[0]);
      translate([12.5,0,-21.3]) scale([1.15,1,6/10]) rand_face("../../../lib/", seed_vect[1]);

      translate([1,0,15.4]) scale([1.15,1,6/10]) rand_face("../../../lib/", seed_vect[2]);
      translate([12.5,0,15.4]) scale([1.15,1,6/10]) rand_face("../../../lib/", seed_vect[3]);
    }

    translate([7,1,manifold]) rotate([-90,0,90]) scale([1,1,8.2/7]) union() {
      translate([8.8,0,0]) scale([.9,1,7/10]) rand_face("../../../lib/", seed_vect[4]);
      translate([-1.2,0,0]) scale([1,1,7/10]) rand_face("../../../lib/", seed_vect[5]);
      translate([-11.2,0,0]) scale([1,1,7/10]) rand_face("../../../lib/", seed_vect[6]);
      translate([-20.2,0,0]) scale([.9,1,7/10]) rand_face("../../../lib/", seed_vect[7]);

      translate([8.8,0,-14.5]) scale([.9,1,7/10]) rand_face("../../../lib/", seed_vect[8]);
      translate([-1.2,0,-14.5]) scale([1,1,7/10]) rand_face("../../../lib/", seed_vect[9]);
      translate([-11.2,0,-14.5]) scale([1,1,7/10]) rand_face("../../../lib/", seed_vect[10]);
      translate([-20.2,0,-14.5]) scale([.9,1,7/10]) rand_face("../../../lib/", seed_vect[11]);

      translate([8.8,0,-9.5]) scale([.9,1,1.35]) rand_face("../../../lib/", seed_vect[12]);
      translate([-1.2,0,-9.5]) scale([1,1,1.35]) rand_face("../../../lib/", seed_vect[13]);
      translate([-11.2,0,-9.5]) scale([1,1,1.35]) rand_face("../../../lib/", seed_vect[14]);
      translate([-20.2,0,-9.5]) scale([.9,1,1.35]) rand_face("../../../lib/", seed_vect[15]);

    }
  }
}

module 2x1_static_staggered_wall_top(top, manifold=-0.05) {
  translate([25,0,0]) rotate([0,0,90]) union() {
    translate([0,1,manifold]) rotate([-90,0,0]) scale([1,1,8.2/7]) union() {
      translate([1,0,-21.3]) scale([1.15,1,6/10]) static_face("../../../lib/", top[0]);
      translate([12.5,0,-21.3]) scale([1.15,1,6/10]) static_face("../../../lib/", top[1]);

      translate([1,0,15.4]) scale([1.15,1,6/10]) static_face("../../../lib/", top[2]);
      translate([12.5,0,15.4]) scale([1.15,1,6/10]) static_face("../../../lib/", top[3]);
    }

    translate([7,1,manifold]) rotate([-90,0,90]) scale([1,1,8.2/7]) union() {
      translate([8.8,0,0]) scale([.9,1,7/10]) static_face("../../../lib/", top[4]);
      translate([-1.2,0,0]) scale([1,1,7/10]) static_face("../../../lib/", top[5]);
      translate([-11.2,0,0]) scale([1,1,7/10]) static_face("../../../lib/", top[6]);
      translate([-20.2,0,0]) scale([.9,1,7/10]) static_face("../../../lib/", top[7]);

      translate([8.8,0,-14.5]) scale([.9,1,7/10]) static_face("../../../lib/", top[8]);
      translate([-1.2,0,-14.5]) scale([1,1,7/10]) static_face("../../../lib/", top[9]);
      translate([-11.2,0,-14.5]) scale([1,1,7/10]) static_face("../../../lib/", top[10]);
      translate([-20.2,0,-14.5]) scale([.9,1,7/10]) static_face("../../../lib/", top[11]);

      translate([8.8,0,-9.5]) scale([.9,1,1.35]) static_face("../../../lib/", top[12]);
      translate([-1.2,0,-9.5]) scale([1,1,1.35]) static_face("../../../lib/", top[13]);
      translate([-11.2,0,-9.5]) scale([1,1,1.35]) static_face("../../../lib/", top[14]);
      translate([-20.2,0,-9.5]) scale([.9,1,1.35]) static_face("../../../lib/", top[15]);

    }
  }
}

rend=false;
random=false;
staggered=true;
render_top=true;
front=[59, 0, 36, 57, 31, 24, 51, 35, 56];
back=[50, 54, 62, 5, 52, 48, 39, 59, 41];
right=[55, 34, 53];
left=[55, 34, 17];
top=[19, 25, 38, 50, 61, 46, 21, 26, 13, 39, 31, 22, 4, 1, 58,24];
seed_vect=rands(0, 100, 2);

if(rend) {
  if(random) {
    if(staggered) {
      2x1_stagger_wall_line(0, seed_vect[0]);
      if(render_top) {
        translate([0,0,7]) 2x1_staggered_wall_top(seed_vect[1]);
      }
    } else {
      2x1_wall_line(0, seed_vect[0]);
      if(render_top) {
        translate([0,0,7]) 2x1_wall_top(seed_vect[1]);
      }
    }
  } else {
    if(staggered) {
      2x1_static_stagger_wall_line(front, back, right, left);
      if(render_top) {
        translate([0,0,7]) 2x1_static_staggered_wall_top(top);
      }
    } else {
      2x1_static_wall_line(front, back, right, left);
      if(render_top) {
        translate([0,0,7]) 2x1_static_wall_top(top);
      }
    }
  }
}


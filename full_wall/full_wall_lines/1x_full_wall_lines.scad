include <../../../lib/forge_lib.scad>

module 1x_wall_line(sc, seed, manifold=-0.05) {
  seed_vect = rands(0, 100, 10, seed=seed);
  
  translate([0,1,0]) scale([1,1,1+sc]) union() {
    translate([1,0,0]) cube([23,23,7]);
    translate([0,-manifold,0]) union() {
      translate([1,0,0]) scale([1.15,1,1]) rand_face("../../../lib/", seed_vect[0]);
      translate([12.5,0,0]) scale([1.15,1,1]) rand_face("../../../lib/", seed_vect[1]);
    }
    translate([25,23+manifold,0]) rotate([0,0,180]) union() {
      translate([1,0,0]) scale([1.15,1,1]) rand_face("../../../lib/", seed_vect[2]);
      translate([12.5,0,0]) scale([1.15,1,1]) rand_face("../../../lib/", seed_vect[3]);
    }
    translate([1-manifold,24,0]) rotate([0,0,270]) union() {
      translate([1,0,7]) rotate([0,90,0]) scale([7/10,1,5/7]) rand_face("../../../lib/", seed_vect[4]);
      translate([6.1,0,0]) scale([1.25,1,1]) rand_face("../../../lib/", seed_vect[5]);
      translate([23.8,0,0]) rotate([0,270,0]) scale([7/10,1,5/7]) rand_face("../../../lib/", seed_vect[6]);
    }
    translate([24+manifold,-1,0]) rotate([0,0,90]) union() {
      translate([1,0,7]) rotate([0,90,0]) scale([7/10,1,5/7]) rand_face("../../../lib/", seed_vect[7]);
      translate([6.1,0,0]) scale([1.25,1,1]) rand_face("../../../lib/", seed_vect[8]);
      translate([23.8,0,0]) rotate([0,270,0]) scale([7/10,1,5/7]) rand_face("../../../lib/", seed_vect[9]);
    }
  }
}
      
module 1x_static_wall_line(front, back, right, left, manifold=-0.05) {
  translate([0,1,0]) scale([1,1,1]) union() {
    translate([1,0,0]) cube([23,23,7]);
    translate([0,-manifold,0]) union() {
      translate([1,0,0]) scale([1.15,1,1]) static_face("../../../lib/", front[0]);
      translate([12.5,0,0]) scale([1.15,1,1]) static_face("../../../lib/", front[1]);
    }
    translate([25,23+manifold,0]) rotate([0,0,180]) union() {
      translate([1,0,0]) scale([1.15,1,1]) static_face("../../../lib/", back[0]);
      translate([12.5,0,0]) scale([1.15,1,1]) static_face("../../../lib/", back[1]);
    }
    translate([1-manifold,24,0]) rotate([0,0,270]) union() {
      translate([1,0,7]) rotate([0,90,0]) scale([7/10,1,5/7]) static_face("../../../lib/", left[0]);
      translate([6.1,0,0]) scale([1.25,1,1]) static_face("../../../lib/", left[1]);
      translate([23.8,0,0]) rotate([0,270,0]) scale([7/10,1,5/7]) static_face("../../../lib/", left[2]);
    }
    translate([24+manifold,-1,0]) rotate([0,0,90]) union() {
      translate([1,0,7]) rotate([0,90,0]) scale([7/10,1,5/7]) static_face("../../../lib/", right[0]);
      translate([6.1,0,0]) scale([1.25,1,1]) static_face("../../../lib/", right[1]);
      translate([23.8,0,0]) rotate([0,270,0]) scale([7/10,1,5/7]) static_face("../../../lib/", right[2]);
    }

  }
}

module 1x_stagger_wall_line(sc, seed, manifold=-0.05) {
  seed_vect = rands(0, 100, 10, seed=seed);
  translate([0,1,0]) scale([1,1,1+sc]) union() {
    translate([1,0,0]) cube([23,23,7]);
    translate([0,-manifold,0]) union() {
      translate([1,0,7]) rotate([0,90,0]) scale([7/10,1,5/7]) rand_face("../../../lib/", seed_vect[0]);
      translate([6.1,0,0]) scale([1.25,1,1]) rand_face("../../../lib/", seed_vect[1]);
      translate([23.8,0,0]) rotate([0,270,0]) scale([7/10,1,5/7]) rand_face("../../../lib/", seed_vect[2]);
    }
    translate([25,23+manifold,0]) rotate([0,0,180]) union() {
      translate([1,0,7]) rotate([0,90,0]) scale([7/10,1,5/7]) rand_face("../../../lib/", seed_vect[3]);
      translate([6.1,0,0]) scale([1.25,1,1]) rand_face("../../../lib/", seed_vect[4]);
      translate([23.8,0,0]) rotate([0,270,0]) scale([7/10,1,5/7]) rand_face("../../../lib/", seed_vect[5]);
    }

    translate([1-manifold,24,0]) rotate([0,0,270]) union() {
      translate([1,0,0]) scale([1.15,1,1]) rand_face("../../../lib/", seed_vect[6]);
      translate([12.5,0,0]) scale([1.15,1,1]) rand_face("../../../lib/", seed_vect[7]);
    }
    translate([24+manifold,-1,0]) rotate([0,0,90]) union() {
      translate([1,0,0]) scale([1.15,1,1]) rand_face("../../../lib/", seed_vect[8]);
      translate([12.5,0,0]) scale([1.15,1,1]) rand_face("../../../lib/", seed_vect[9]);
    }
  }
}

module 1x_static_stagger_wall_line(front, back, right, left, manifold=-0.05) {
  translate([0,1,0]) scale([1,1,1]) union() {
    translate([1,0,0]) cube([23,8.2,7]);
    translate([1,0,0]) cube([23,23,7]);
    translate([0,-manifold,0]) union() {
      translate([1,0,7]) rotate([0,90,0]) scale([7/10,1,5/7]) static_face("../../../lib/", front[0]);
      translate([6.1,0,0]) scale([1.25,1,1]) static_face("../../../lib/", front[1]);
      translate([23.8,0,0]) rotate([0,270,0]) scale([7/10,1,5/7]) static_face("../../../lib/", front[2]);
    }
    translate([25,23+manifold,0]) rotate([0,0,180]) union() {
      translate([1,0,7]) rotate([0,90,0]) scale([7/10,1,5/7]) static_face("../../../lib/", back[0]);
      translate([6.1,0,0]) scale([1.25,1,1]) static_face("../../../lib/", back[1]);
      translate([23.8,0,0]) rotate([0,270,0]) scale([7/10,1,5/7]) static_face("../../../lib/", back[2]);
    }

    translate([1-manifold,24,0]) rotate([0,0,270]) union() {
      translate([1,0,0]) scale([1.15,1,1]) static_face("../../../lib/", left[0]);
      translate([12.5,0,0]) scale([1.15,1,1]) static_face("../../../lib/", left[1]);
    }
    translate([24+manifold,-1,0]) rotate([0,0,90]) union() {
      translate([1,0,0]) scale([1.15,1,1]) static_face("../../../lib/", right[0]);
      translate([12.5,0,0]) scale([1.15,1,1]) static_face("../../../lib/", right[1]);
    }
  }
}

module 1x_wall_top(seed, manifold=-0.05) {
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

module 1x_static_wall_top(top, manifold=-0.05) {
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

module 1x_staggered_wall_top(seed, manifold=-0.05) {
  seed_vect = rands(0, 100, 7, seed=seed);
  translate([25,0,0]) rotate([0,0,90]) union() {
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
}

module 1x_static_staggered_wall_top(top, manifold=-0.05) {
  translate([25,0,0]) rotate([0,0,90]) union() {
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
}

rend=false;
random=false;
staggered=true;
render_top=true;
front=[49, 3, 31];
back=[12, 33, 29];
right=[55, 34, 53];
left=[55, 34, 17];
top=[19, 25, 38, 50, 61, 46, 21];
seed_vect=rands(0, 100, 2);

if(rend) {
  if(random) {
    if(staggered) {
      1x_stagger_wall_line(0, seed_vect[0]);
      if(render_top) {
        translate([0,0,7]) 1x_static_staggered_wall_top(seed_vect[1]);
      }
    } else {
      1x_wall_line(0, seed_vect[0]);
      if(render_top) {
        translate([0,0,7]) 1x_wall_top(seed_vect[1]);
      }
    }
  } else {
    if(staggered) {
      1x_static_stagger_wall_line(front, back, right, left);
      if(render_top) {
        translate([0,0,7]) 1x_static_staggered_wall_top(top);
      }
    } else {
      1x_static_wall_line(front, back, right, left);
      if(render_top) {
        translate([0,0,7]) 1x_static_wall_top(top);
      }
    }
  }
}


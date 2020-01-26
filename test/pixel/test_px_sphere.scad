use <unittest.scad>;
use <pixel/px_sphere.scad>;

module test_px_sphere() {
    echo("==== test_px_sphere ====");

    expected = [[-2, -2, -4], [-1, -2, -4], [0, -2, -4], [1, -2, -4], [2, -2, -4], [-2, -1, -4], [-1, -1, -4], [0, -1, -4], [1, -1, -4], [2, -1, -4], [-2, 0, -4], [-1, 0, -4], [0, 0, -4], [1, 0, -4], [2, 0, -4], [-2, 1, -4], [-1, 1, -4], [0, 1, -4], [1, 1, -4], [2, 1, -4], [-2, 2, -4], [-1, 2, -4], [0, 2, -4], [1, 2, -4], [2, 2, -4], [-2, -3, -3], [-1, -3, -3], [0, -3, -3], [1, -3, -3], [2, -3, -3], [-3, -2, -3], [-2, -2, -3], [2, -2, -3], [3, -2, -3], [-3, -1, -3], [3, -1, -3], [-3, 0, -3], [3, 0, -3], [-3, 1, -3], [3, 1, -3], [-3, 2, -3], [-2, 2, -3], [2, 2, -3], [3, 2, -3], [-2, 3, -3], [-1, 3, -3], [0, 3, -3], [1, 3, -3], [2, 3, -3], [-2, -4, -2], [-1, -4, -2], [0, -4, -2], [1, -4, -2], [2, -4, -2], [-3, -3, -2], [-2, -3, -2], [2, -3, -2], [3, -3, -2], [-4, -2, -2], [-3, -2, -2], [3, -2, -2], [4, -2, -2], [-4, -1, -2], [4, -1, -2], [-4, 0, -2], [4, 0, -2], [-4, 1, -2], [4, 1, -2], [-4, 2, -2], [-3, 2, -2], [3, 2, -2], [4, 2, -2], [-3, 3, -2], [-2, 3, -2], [2, 3, -2], [3, 3, -2], [-2, 4, -2], [-1, 4, -2], [0, 4, -2], [1, 4, -2], [2, 4, -2], [-2, -4, -1], [-1, -4, -1], [0, -4, -1], [1, -4, -1], [2, -4, -1], [-3, -3, -1], [3, -3, -1], [-4, -2, -1], [4, -2, -1], [-4, -1, -1], [4, -1, -1], [-4, 0, -1], [4, 0, -1], [-4, 1, -1], [4, 1, -1], [-4, 2, -1], [4, 2, -1], [-3, 3, -1], [3, 3, -1], [-2, 4, -1], [-1, 4, -1], [0, 4, -1], [1, 4, -1], [2, 4, -1], [-2, -4, 0], [-1, -4, 0], [0, -4, 0], [1, -4, 0], [2, -4, 0], [-3, -3, 0], [3, -3, 0], [-4, -2, 0], [4, -2, 0], [-4, -1, 0], [4, -1, 0], [-4, 0, 0], [4, 0, 0], [-4, 1, 0], [4, 1, 0], [-4, 2, 0], [4, 2, 0], [-3, 3, 0], [3, 3, 0], [-2, 4, 0], [-1, 4, 0], [0, 4, 0], [1, 4, 0], [2, 4, 0], [-2, -4, 1], [-1, -4, 1], [0, -4, 1], [1, -4, 1], [2, -4, 1], [-3, -3, 1], [3, -3, 1], [-4, -2, 1], [4, -2, 1], [-4, -1, 1], [4, -1, 1], [-4, 0, 1], [4, 0, 1], [-4, 1, 1], [4, 1, 1], [-4, 2, 1], [4, 2, 1], [-3, 3, 1], [3, 3, 1], [-2, 4, 1], [-1, 4, 1], [0, 4, 1], [1, 4, 1], [2, 4, 1], [-2, -4, 2], [-1, -4, 2], [0, -4, 2], [1, -4, 2], [2, -4, 2], [-3, -3, 2], [-2, -3, 2], [2, -3, 2], [3, -3, 2], [-4, -2, 2], [-3, -2, 2], [3, -2, 2], [4, -2, 2], [-4, -1, 2], [4, -1, 2], [-4, 0, 2], [4, 0, 2], [-4, 1, 2], [4, 1, 2], [-4, 2, 2], [-3, 2, 2], [3, 2, 2], [4, 2, 2], [-3, 3, 2], [-2, 3, 2], [2, 3, 2], [3, 3, 2], [-2, 4, 2], [-1, 4, 2], [0, 4, 2], [1, 4, 2], [2, 4, 2], [-2, -3, 3], [-1, -3, 3], [0, -3, 3], [1, -3, 3], [2, -3, 3], [-3, -2, 3], [-2, -2, 3], [2, -2, 3], [3, -2, 3], [-3, -1, 3], [3, -1, 3], [-3, 0, 3], [3, 0, 3], [-3, 1, 3], [3, 1, 3], [-3, 2, 3], [-2, 2, 3], [2, 2, 3], [3, 2, 3], [-2, 3, 3], [-1, 3, 3], [0, 3, 3], [1, 3, 3], [2, 3, 3], [-2, -2, 4], [-1, -2, 4], [0, -2, 4], [1, -2, 4], [2, -2, 4], [-2, -1, 4], [-1, -1, 4], [0, -1, 4], [1, -1, 4], [2, -1, 4], [-2, 0, 4], [-1, 0, 4], [0, 0, 4], [1, 0, 4], [2, 0, 4], [-2, 1, 4], [-1, 1, 4], [0, 1, 4], [1, 1, 4], [2, 1, 4], [-2, 2, 4], [-1, 2, 4], [0, 2, 4], [1, 2, 4], [2, 2, 4]];   
    actual = px_sphere(5, false);
    
    assertEqualPoints(expected, actual);
}

test_px_sphere();
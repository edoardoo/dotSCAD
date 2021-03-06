# nz_perlin1s

Returns 1D [Perlin noise](https://en.wikipedia.org/wiki/Perlin_noise) values at x coordinates.

**Since:** 2.3

## Parameters

- `xs` : The x coordinate.
- `seed` : The random seed. If it's ignored, a randomized value will be used.

## Examples

    use <hull_polyline2d.scad>;
    use <noise/nz_perlin1s.scad>;

    xs = [for(x = [0:.1:10]) x];
    ys = nz_perlin1s(xs);
    points = [for(i = [0:len(xs) - 1]) [xs[i], ys[i]]];

    hull_polyline2d(points, width = .1);

![nz_perlin1s](images/lib2x-nz_perlin1s-1.JPG)
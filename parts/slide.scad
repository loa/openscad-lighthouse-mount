module slide(l, h, w1, w2, ew){
    polyhedron(
        points=[
            // lowest layer anti-clockwise
            [0, 0, 0],
            [l, -((w2-w1)/2), 0],
            [l, w2-((w2-w1)/2), 0],
            [0, w1, 0],

            // top layer anti-clockwise
            [0, h/2, h],
            [l, -((w2-w1)/2)+h/2, h],
            [l, w2-((w2-w1)/2)-h/2, h],
            [0, w1-h/2, h]
        ],
        faces=[
            // bottom
            [0, 1, 2, 3],

            // sides clockwise from smallest front
            [3, 7, 4, 0],
            [0, 1, 2, 3],
            [2, 6, 7, 3],
            [1, 5, 6, 2],
            [0, 4, 5, 1],

            // top
            [4, 7, 6, 5]
        ]
    );
}

slide(60, 5, 20, 24, 5);

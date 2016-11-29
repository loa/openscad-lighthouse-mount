module slide(l, h, w1, w2){
    translate([-w1/2, -l/2, -h/2])
    polyhedron(
        points=[
            // lowest layer
            [0, 0, 0],
            [w1, 0, 0],
            [w2-((w2-w1)/2), l, 0],
            [-((w2-w1)/2), l, 0],

            // top layer
            [h/2, 0, h],
            [w1-h/2, 0, h],
            [w2-((w2-w1)/2)-h/2, l, h],
            [-((w2-w1)/2)+h/2, l, h],
            [0, h/2, h],
            [0, w1-h/2, h],
            [l, w2-((w2-w1)/2), h],
            [l, -((w2-w1)/2)+h/2, h]
        ],
        faces=[
            // bottom
            [0, 3, 2, 1],

            // sides beginning with front
            [0, 1, 5, 4],
            [1, 2, 6, 5],
            [3, 7, 6, 2],
            [0, 4, 7, 3],

            // top
            [4, 5, 6, 7]
        ]
    );
}

slide(60, 5, 20, 24);

module box(w, l, h){
    polyhedron(
        points=[
            // lowest layer
            [0, 0, 0],
            [0, w, 0],
            [l, w, 0],
            [l, 0, 0],

            // top layer
            [0, 0, h],
            [0, w, h],
            [l, w, h],
            [l, 0, h]
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

box(30, 50, 5);

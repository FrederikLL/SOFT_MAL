package com.company;

public class FirstFind implements UnionFind{

    private int [] id ;
    private int count;

    public FirstFind(int n) {
        count = n;
        id = new int[n];
        for (int i =0; i<n; i++) id[i] = i;
    }

    @Override
    public void union(int p, int q) {
        if(connected(p, q)) return;
        int idQ= id[q];
        int idP = id[p];

        for(int i = 0; i< id.length; i++) {
            if (id[i] == idQ) id[i] = idP;
        }
        count--;
    }

    @Override
    public int find(int p) {
        return id[p];
    }

    @Override
    public int count() {
        return count;
    }
}

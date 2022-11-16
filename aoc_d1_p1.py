data = open('/Users/kayleighadamson/Desktop/aoc_d1_p1.txt', 'r')
depths = [int(x) for x in data]
increases = sum(x < y for x, y in zip(depths, depths[1:]))
print(increases)

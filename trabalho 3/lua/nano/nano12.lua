function main()
    local n, m, x
    n, m, x = 1, 2, 5
    while x > n do
        if n == m then
            print(n)
        else
            print(0)
        end
        x = x - 1
    end
end

main()
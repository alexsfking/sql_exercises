/*
You are given a table, BST, containing two columns: N and P, where N represents
the value of a node in Binary Tree, and P is the parent of N.

Column          Type
N               Integer
P               Integer

Write a query to find the node type of Binary Tree ordered by the value of the
node. Output one of the following for each node:
    Root: If node is root node.
    Leaf: If node is leaf node.
    Inner: If node is neither root nor leaf node.

Sample Input
    N               P
    1               2
    3               2
    6               8
    9               8
    2               5
    8               5
    5               null

Sample Output
    1 Leaf
    2 Inner
    3 Leaf
    5 Root
    6 Leaf
    8 Inner
    9 Leaf
*/
SELECT
CASE
    WHEN P IS NULL THEN CONCAT(N,' ','Root')
    WHEN N IN (SELECT DISTINCT P FROM BST) THEN CONCAT(N,' ','Inner')
    ELSE CONCAT(N,' ','Leaf')
END
FROM BST
ORDER BY N

/*
***Chat-GPT***
The given query is used to find the node type of a binary tree using the
information present in the table BST.

The table BST contains two columns N and P, where N represents the value of a
node in the binary tree, and P is the parent of N.

The query uses a SELECT statement to select the data from the table BST. It uses
a CASE statement to check the type of each node in the binary tree.

If the parent of the node is null, it is a root node. If the node's value is
present in the parent column, it is an inner node. Otherwise, it is a leaf node.

The query uses the CONCAT function to concatenate the node value and its type
into a single string.

Finally, the query orders the output by the node value.

Here is the breakdown of the query step by step:
    *   The SELECT statement selects the data from the table BST.
    *   The CASE statement is used to check the type of each node in the binary
        tree.
    *   The first WHEN clause checks if the parent of the node is null. If it
        is, it means the node is a root node. The CONCAT function is used to
        concatenate the node value and its type into a single string 'N Root'.
    *   The second WHEN clause checks if the node value is present in the parent
        column of any other row in the table. If it is, it means the node is an
        inner node. The CONCAT function is used to concatenate the node value
        and its type into a single string 'N Inner'.
    *   The ELSE clause is executed if none of the above conditions are true. It
        means the node is a leaf node. The CONCAT function is used to
        concatenate the node value and its type into a single string 'N Leaf'.
    *   The FROM clause specifies the table from which the data is selected,
        i.e., BST.
    *   The ORDER BY clause is used to order the output by the node value.
*/
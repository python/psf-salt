users:
  # Admins
  ernestd:
    fullname: "Ernest W. Durbin III"
    admin: True
    ssh_keys:
      - ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDZOuPNmBeKubAvLrnZlVGzp49Duw/qn8cq4IsOmxKsiVtiTDdLLKr6YBA67CPu/QrVEZYMU/N7RpNOKRfqueYdw8aNB+KgGOy8B/OIiX2obi854q0B81NaYTxdjUmuo67q9gNcdrEv6GmJJzBFqx//d4Nl4F4pcQLFTmxfZg3MDB1zyo2qP8ZpW5jttNty7LpvFlReSHEB/87o7wlNrhnrwSg68NykC2x/DzPv5ZOY5ccW4YiatjS5R2P7MDWv+aabbzZD4G0r3ElaXyW4fRV4KWuyh0ow/5djG0ZIWQSSuqqsnxcmRiV67IV28X6c2uw2zoFO5LLYly8UKMC6OLuFJlrmUPuzXvEeB/AcudgPPFxaip0aSzhowih7Ij0i+rVgma535q6pPqSkPCAcOLpmSi0yk23V9Mr38zg2d33poqV+bFbtSOE3a2gA52rDj4+YMcHQZqxZrgUv0KrSuKwcEm5WyBSOYI1VUoGCxiF27HY+9NaTqfMSHF0AJIVGHsv31uAWa4wqynQVrbZfH4wxlC6yC447HKjizp2LIoZx16LqSHMFfCGQBI4trZPGwZb+OBq2rhFY0GxgQaowrIK0E+VgTiDjcq6VtraglEHJsysK7jj4NiEWiIFVEv0WNW5e2DKVQKZ9BrN7sILcVp+g9VUSRirAZTXzheHLb6+8Hw== ewd3yubikey2018
  dstufft:
    fullname: "Donald Stufft"
    admin: True
    shell: /bin/zsh
    packages:
      - zsh
      - git
    dotfiles: True
    ssh_keys:
      - ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIG7R8y2Ecocj+t5rP7YNmNWM+QmmZ8Wuz0f1btJ3KcA0 donald@stufft.io
      - ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQC5md5DAPib7J+uGHanzgQOJ9GwGYAi7RLbG+rB/0NRk8UbUnwzn0JwkqNTXzeomUapO5Z3cOxQ98jzb0k03hGOzhzjIQpaKI1uKxPPquDevf/PwM5ZQaJzlx/8ah76GzJtEQpIIIbw/fofzywv9pZKTBCDL3wBHB94oByQjr0BG9CfjbMZq6FXcBKfo89L56nLQ8cdvxg2tjNJQElva5gL/xnqjpowtQYjA9MPKFmDwJPcrRF2AstBg5Zpkg+8K4JhJltucXTPEva97alK9prshGFY6XLtVD0mtgbwpHFXjFm7cIQYr8XG3pJdtWki0fLg0o3W1YBukQ+reDblT8SnFaDscgF1gStTra5zXfVF5OJaaRFE8zaYuwC01DQT9sN9G4fV4eK8HRbgpObCJcxnCyTs/SYGVhO1PpOiQYmyswGUlV4vU8G3gl3u0D+gkcpHRkdko0HlFbNUt1wKIZWcGLJcKkNWMKGSf1TaciU+6+2A4QVDxtdab8HdjnbuugX9/FckqjZypaUOwl8U4fYc4JbdUQ78PvcQrSQvhRPZB+1KSvm8rwRuBnFWiNlYmThLhGmKDBXegNF8eFRe4dApzv2DyshasHs4tNv46YIox6FdFEw0voRNPqhbTCF3XIdOQvxkHeZRyGGWv4WCTImM5+3GhXrbOQUtB9NjfM7rhQ== donald@stufft.io
    access:
      packages:
        groups:
          - aptly-uploaders
  benjaminws:
    fullname: "Benjamin W. Smith"
    admin: True
    ssh_keys:
      - ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC1BJUpRtzq1fCntjuNm4YeIDcefBFbkjzFCvN7Zot4UVWpExWqOLJynRYmaAUAFnJNQd5QuXsBIEmC9ySPV0gs+ueX9yg+RLieXcPoym2fMQ7UgmkaJloYgLnWJM3apG0UnGEDRO6Bz4cm+PC5NPfuZlOdYeOmNVKZoOe3via2RABec+hsWRdr2mD7OVL4PUR3AL3IPa9r8WlLhIBG53MkiVU2su8RVnEEyHmc61YQL8sFnI2zt6aSNiFuHvo6sHL3cMsP9XNArOtONZCc3NPvzN9Lh9jCk+JEe47ox/17CxMCOVhn3B9nRh2oGXydYf6LWH2wkhQ5y07dIjULKi9T benjaminws@macbuntu
      - ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDcY/+b32IynLZhF/fjBfGjUjGlS1XCaMYKNxPZNekBv0hWteBh185k3A1yAZWRWAgLsvpHpe5Srs3Wxoz+NF51UWHMYVtpPzXEmpcjsqOe96rKrixFSlrYt89iHklW4FdAV3oJbbQpvXb8c6eFD6dantzmHj8FFRg+f5Bb+lsGhLIzxDcjcKJbySGLHHS+SgQvaXMFd1XE+Gs/SXgQxpbWV347BdOETJplA96jVB74bxoIP+GuCImO34VCu4eG+klnhMeY2MscYgmBa3ePjD86qef0StBu9zzruR5s+y4cYQK8h5Xm2+sC6RdZbZaSeQL+yfYXhPhfvEv4v5WT/QDb bsmith@bsmith-laptop
  coderanger:
    fullname: "Noah Kantrowitz"
    admin: True
    ssh_keys:
      - ssh-rsa AAAAB3NzaC1yc2EAAAABIwAAAIEAvV0vQo3OpzqDFDBHW5o5abdbNJNNg9YkiawTpSnOusB+E9Hp2Pae1jT3r+7ZUqIIutXuNOPOefIy6oR0YuZhL6d9uhRIl9LMTB0XXzj5aW5ZbbGO6nsaERQUU3ALYzrwxgX8kLvCcAQmrVhhRH88Zqo4lkRkxXpN1LdPANh9qa0= coderanger@alfred
  benjamin:
    fullname: "Benjamin Peterson"
    admin: True
    ssh_keys:
      - ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIC5RZqb06JuJrCClQkFvR/6rSvtFs9MSh7qQxe6gzVpz Benjamin Peterson
      - ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCcYs+A92GFHjSjLLijjQqFsznTdtqbVDs049RuwFbhLrGV44FaHDk6mP9aRmZSBOBLTDir9XjtN99mSLUDnDzMG/asJrcJeFJtHqTfoiCiXk/jHVg/iK7pbj0ywi7LbBM2AbduvowwKNiL/70cyv0IfMJcm4JuhkBiZByFevi9cW4XIfo9yFoXMxPFa4tAvorF8uBfgLBVJ2EJYb5fEHxmxAE1MdoEBnbjKYuZqZZ73hijDJUPErFxY0OXTeLKKX1PEsI7hAhPW8mkv1i6VcqvbG6rfC+HLiMO0coTCp8ax0P0GfGgR4uivUi02ZFifXg3sftBOldiU1eIqzMJUxH3Y3zFQYVSpMuyLAw/07apHcKMDMIgomIZ9+LN7ychCoq0SnLMiv8BeO9emyxgDNVtgb/kYKet5WyWPyDtHTMDlZ5VGwgA8XXSb1LpNto9cJhirhK7LChfqB/BeyM3SFNr17aXqm/p4ah3hoKiswKTJcnulRSNdWFvPS9AMerSGWWgQMDE1qUesKT1PUrZyNN5j+rrF8g3jr2FTkaNXJiun+SHAJkuQXArjMxs3QQRAbg/gGOzuFEibtYFQJZyxDZ7Bt3Qe2GQb/JKZGVPnPGMjHmU38hL6ItklC1QOWDXlJcFgX0vZ+hCwSDZxSgY0/KMEJVEsEZIzYgj+TRHz9n01w== benjamin@benjamin-mbp.corp.dropbox.com
    access:
      docs:
        allowed: True
        groups:
          - docs
      downloads:
        groups:
          - downloads
      jython-web:
        groups:
          - jython

  # Other users
  antoine:
    fullname: "Antoine Pitrou"
    ssh_keys:
      - ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIECocvLw5VQdrDP6WdzVtitcB3qP5vkwVAaUvJWYwRp/ antoine@fsol
    access:
      hg:
        allowed: True
        sudo: True
  barry:
    fullname: "Barry Warsaw"
    ssh_keys:
      - ssh-rsa AAAAB3NzaC1yc2EAAAABIwAAAQEA3EoQJ+jfbvoG0zBNueWNwq5ElwB4PvXK/MKuEoX1Nr73CP6gwWOBpAmlv13z4BovQXAnOIbIyJIMc6tnaTEn7xX2nc+YsQ7Z6/CFJ2rERUtg85RDH1pRcrPYueEABNI93HRpWn3XHoQYQ3a3oY9mRtVyIx65Ec6Yxqv6H3QlJZKlX9e76V3KUtrV+LT5vODtId/we9K9CvYZwLN5KP3eU01MGaMaF4J+TkVcPa0QfWoPLDWeXOLu68SSB6Gkk2G15id5Z8JKZ71hNCTOiDQTYg+yCyAbSMyvTJueUV2W0ObRh4ziVPzDsf7pv/27jSJXAyO8l3GZDWDFFzekUAaKvQ== mobile@Digital-Man
      - ssh-rsa AAAAB3NzaC1yc2EAAAABIwAAAgEA5uI0CZ7n7ztfSMqYzjj3UK+4zpcMHoshpMRK/fAw65+gntPSjenZnSQBTEt/Cpo951cFZaTcGWlRxzFyOvbUuEwnfafQlAlQDyWa3bcZ2bXTxmA+rdjpY9TnPwXL5oU/14s2zpxg4mFRyTtl+GquPRGTCY5UAorRqnffV5ht9USdAJ3Ur/Rm5tQ8eL3fXLO56knaHguGhFZypkBGLYlTeLpl9VzSHwhRIng+sHimLkQRrMy/psmsB8z45+BPwbUX+Y7syfbN+EjBZrC7EWTlUn9cdAr4s/WJhFOpyR5FR6M4K+lC7KeypnSnTuTmBFEoglYtl/SbI7GIFaqGld/GAHohSPA7A6Xt6kR8kiqBU4VFsXtwiC5ZJ172CoDyDyF12JDZuKYlTn3Sja+CwBnRMu7RJ22fiB//ORkHIRFd9cgdbEDQFraGGXXvj18lHzGhTPZazmWMSxyUrYZ/2oK9RRXx726g5a7rRZ2wmLpq6grVxFmN+KA8UF+d4a5OLr9lU9xykEPCmV8X5oV9pJPbVeoGIYLYfT26Wra8Nu3PwDwaV3P0kiXBnsfxZaynPA19M+cLL+s68pc+aV7ZVh7ghYC8yVhAWjpycN4xF39g3CCFULElXIG+qD1yxq0ZvdArRyl3diGdQamYhDJ67+efpZEB+wm8TeignviwUr1EVJM= Keys for VMs
    access:
      docs:
        allowed: True
        groups:
          - docs
      downloads:
        allowed: True
        groups:
          - downloads
      mailman:
        allowed: True
        sudo: True
      mail:
        allowed: True
        sudo: True
  fwierzbicki:
    fullname: "Frank Wierzbicki"
    ssh_keys:
      - ssh-rsa AAAAB3NzaC1yc2EAAAABIwAAAQEAscNf5qrUYYXPjSJAjDPeZIwmxHJKf10sjBSoRXoD6nBfCoN+joPZIX+xxPZWqunFKcRxcaQCtxAOYLWDy2s4AfIe1oGv2gPZsrYOs3FrlSYSnvOgfbQzmqs1p7Jm5Rxwh/TKRonh8iYt8YD04z6oQ1/p1WkazsVXD/dekX0vC5PzMRMIpq3oUTJ1BaWbFQmh580r6J9mAgavxwuaOrDT/Ld73kvYwdFFbIuK1LRcYdQvuJDK8+y9qTk5shb8FtmAPLCwQV9S4OwItoZVUp29rCQgmPH3dOY1GB2EM2lus7mRRc4e371kIGKC5/jCLSeA0Jc4mATDvxSx45sSmygutw==
    access:
      jython-web:
        allowed: True
        groups:
          - jython
  gbrandl:
    fullname: "Georg Brandl"
    ssh_keys:
      - ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCmbsFom9RaggUlB3k8JQCEFDS0IfOVEUSc4Rp4hn2IZhmmpVM1kz+PG93LosAu5rqYi/tTtjTfqjT1EAiGDe+ynqEUznA8tuH8i9yUb/nuWn2hVa60od3rCbWzOh98fiREihd/ITM38GpHgUt1tAXC8d3U4Q8YwPbzc2qSDvB8aq2sdWhSToPf5JEYDgjWvCHmRB+GFmWuusb7CekQ7o/3WY8KS86A+iXfdPyXa8bd2LnUxBVEkIggXNgP0+1Dk6oyWQTuyYKt9m498Zzz3cqliY5DdGxxDVhPoFCtFw1hTyb/4bRPOsGJGgJjIFaQkoRuxilhUn1VT1OajmuWjJAN gbr@georg
    access:
      docs:
        sudo: True
        allowed: True
        groups:
          - docs
      downloads:
        sudo: True
        allowed: True
        groups:
          - downloads
      hg:
        allowed: True
        sudo: True
  gronholm:
    fullname: "Alex Gronholmn"
    ssh_keys:
      - ssh-rsa AAAAB3NzaC1yc2EAAAABJQAAAIEAoAooLyA81RQSzJKuQ3r7XwFOFpuCQACW5pM7qrNDkwSJALxIFn/TIecGc94AecRyhQfzQThJVNGm7x4+W92tDb+LY8EGO+LiizgHwMFSF9SOosHLiuAklC/OFy7xAnfwEJbW41ZALsW+K84tDv4WseO2iKCqhwP+9Wi6ToV+9Nk=
    access:
      jython-web:
        allowed: True
        groups:
          - jython
  larry:
    fullname: "Larry Hastings"
    ssh_keys:
      - ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCzWLZOI56gvPiuow/pR8MCCaK2zglBxpNk8mzim+JrSox06Ilu90YrL2zsM4MvgV8TpWWrXH/UQtz1eko188hKAT98IzBwgFoVvbTh23Tidc8YA2A0l4KlPvgcnc8FiGa9ha2UZMUN3bg46lq/crbp3+RiF3+W4jziAHzv1zihDMeaY/tx8iZamFWwJcIqqh+6ptDJ5COeRqECT7A/JUdPw2f8ajvm5oIaWrIu4fUxiRaQviiTgYfqT8MjmExDgqVLgGy0/JUUEo5rkBMgQLU2A783o4a5qxeZD4VOe0HazDwi6YtyvUiTjOIpyjmxH3lT6RoSo3gIRYkW5q4T+gCv larry@hastings.org
    access:
      docs:
        allowed: True
        groups:
          - docs
      downloads:
        sudo: True
        allowed: True
        groups:
          - downloads
      hg:
        allowed: True
        sudo: True
  loewis:
    fullname: "Martin von Loewis"
    ssh_keys:
      - ssh-dss AAAAB3NzaC1kc3MAAACBALEQSXDzDyY1PENMiRh7mVZsfJTG34ytr/GLMOhpLrFmsQRglkBdK04hEcd6gDT3+7vEUmHndIdj2RLQCG4OR8XISTrQ2Nmq1aktw+MABkmrp3pnPyKUxI0LC3F3ZKRdTefzIz8JeSVrJ7bzxRPX2ogN5i4vz0F8JZidx9tN5MODAAAAFQC7zsu/+K7W0eYMRXrNvvoX/0dCPwAAAIAwJNCVFKZldb//3yo7KMjrIGZrLwjBjc08E+cEFh0VkREL0TLRnHorwPdmkPKLZd0FjN/NJJLYUtAiX4ty9ZEXg0g9psVydhK9YMP6+gfRDtlrdse4N0PHgLeS4d70S6s9Zhtxdgl8T/vc8PDhzDkvqoD6rOlGbDXXTsm1FmzbigAAAIEApPn5qyxaYBrGXsUzW8Q1tnjIJKVTEZNS54cOgXvnGZkStg+e8Usr5d23Ik2cMs5c28NwifVhw9FREi04kEfbKE5XoiKcBYHAVXwriO1CVDznGuPAJmUVc3frY55Rg16vCXsMvJxNKfVil7mhLTwbgwTN8tZbEj5Tlh/mSRVredQ= martin@mira
      - ssh-dss AAAAB3NzaC1kc3MAAACBANVhIMrbKczF76sU4k73Bhh4qR15psW6stle8Zo+/jY7OBGfwf3m/UaH6QEwfQQka6glIkB062oM4ZtzauS6iQNcmeBuAywRM1jfWQ3SqnWUuAevAKQ5NHJ5lvMUWxrQLZch/SNLkQER83XY0PvRr/TR8jqzdQLTdNoB0ErLElVXAAAAFQCm+TYKtE7/pQpVz6td5n9+pZR1aQAAAIB5Rclk9FBfSe1hJ2lKkRcki/t2m4SyI3pV9WAEV2wqWdz4YTrIKwmEGFAFxBd8ElbnLahPTtWsFSgaAyzRr6/903rjSTlDupg28mhKPWoJ5yypzpgEbqvtERrbQVkSVLrOpGECQIKtdWqQcdINnILjA3Jx/+UbcR6hY+8APDZQ1gAAAIEAgYl2sn4Hs/xzGwevZUq9Cqd+t6UcYnpSwutZoewP/yLGNXGzAu6CjD7UHi8vcYupB1ojVaWNlRNYBANRlpcbO1J4u1mW5Ky5tYOax4ts+sdIET/241qgpFq40KVF2uIFkNUUIdIigUQPUhqy+41IUWU8o2QRXmo8I6Cw7vppJTQ= loewis@kosh
      - ssh-dss AAAAB3NzaC1kc3MAAACBALfLPD0tevBjI5aqbV/B8e+9a13o/CQmBeEc7zFiVJ9/ZRPMmKHmuwczpMwzrA5ABS8Ih/HZ864yG+d1IMcJZW4PSzPw0mMWGadR/rGfeZJA03nG90TNJp0DqQXQ8e5RZif9StBpPJ67qQMY3KeyKveJZU99d5oSfxpWOVxE9QwBAAAAFQCmKEkEf4fXceJisqqTEbQ932hRUwAAAIB6Otm8xZtTb1ZF7JqsD2DjfKiu7vHVx204UG78I3Fj9BwIQx4zK+fSgjI3ZyMfJjAcBekQQKE5uWnD0PsrJO7q80C2HZNzY9da7Ou8bvegltn5cME36Xh2DQEEEVBGNnTCgG0Fj8UVCVnjIjvAOOxx8jpV5LXrfty6uAoy+cs6UwAAAIBBI2qoYRr6/V7BTlVAo9Tpg3tkbbYduC64jfcdfqjJhgc9nWoqWqW4k3lMadWOXhMheXOyfndm+qhVYe1rbboUaD4MyFOGyvG/AVH4PdXdKyMVQncO47hNko7bxTCrplNERjTrWrMdOtR1CuDLfRTBkBgW1h6dhsZZkQm6rUeFNw= loewis@creosote.python.org
    access:
      downloads:
        sudo: True
        allowed: True
        groups:
          - downloads
  nad:
    fullname: "Ned Deily"
    ssh_keys:
      - ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDBmTFZYEfgTq7pyY/GAF2UYVxBt/xNTfqXchlaGUhOTGQreQidR4UnmdmZmjWr838o6/TSO4wFgyQ9ZrfsMTr3cWwDAXFCiVvp0ky0o8ajWdBgYpX1Zn/CmoBTBFaRQMuppo+UzgHvWucHJjq1dyxCKkH66p4x8NkUTJ4ooKigs7MbYKNgSm8UxcSor08MLKoXI+xf+eTeDDA4Z+IzbVDPTKZmDPTt3PE7QOXardftARtXi1esdt9L36S9zaSjLgJBy62Xt1/FqQ86xngxC7gqmjVj8/E2o/XXxp9c2zf+lAU0gCLAZo/ZKacvz1F2QZ9x1SMfokcELFnX/Oyx6ObT ned.deily
    access:
      downloads:
        sudo: True
        allowed: True
        groups:
          - downloads
      docs:
        allowed: True
        groups:
          - docs
  pjenvey:
    fullname: "Philip Jenvey"
    ssh_keys:
      - ssh-dss AAAAB3NzaC1kc3MAAAEBAIZHS9XNndCJaMiUhkqqMecbLMa2MQg8wAq9ekncy06WEiHxNJwgUYtObrtZQFxlXpwad1q/6p9KQBkGlneUaAdFNoEqEwCex4INiqhrjzKAyRs42zy5i2bh8blFMGN/0LejJihABC7eBE42DWNBdbkUXqJLVPJX5rMduR8qCHMyyD/y+2MmsQGIORjYNTnV+E5lb20WfC7RrFA1+rImPdmI5gyXafHtfPewRWk4wBg+CjIDJ7ci4mqLaTrXAgOjoJwBn5hWGdFq7jTlThEt38riXYK/EiX+lx3Ncj5GFaqk9Try9A0dgSp2ifBlNUn8Qkh4qpmDeRectveFJK04o7cAAAAVAMgyHCzNfUfrzyeIqVVz+vcbC9FZAAABADpjkVMORDKgmC9wPwIlXxEuU3T6Srsnc8Pn90lAlNhBCNEVFlWBnSilK1jRrB/o5PFVFDAao51LsPRfPaSAmIYp//CowQHtTFo6qDzH1YLYvUUy/YRiXeFhHabFonr6CfAasYzbnkI5fUBwgNv9ZrnjnmG1P4WgWoIhpEKUhXssWmoev40182YDNXe3dEkbSUqWBjqniPUVaUsyPYb7PAmzm5sAjJgZtGz98KioAgTxEoTwCb9lkyBP9TWkoJzYRMoM9vheDwFRRGn2yRRYUG3JU5nSP4AAD+vRbBn/dSJJSOJ+RWOmvRGcEYuop+0/NAQ2RUuzyGlxcjsa9NLnSHgAAAEATPC5OAnez+kwqxJbbxA+OaYkODFoBMjq9Gwwz1/wjMRKvqjzJFwkmSlQtOLPFpr111HZzk7Z6LAJ/cxDLW9AB6ACHGoTpb5gT0YF8vhhpiOIbh525e1fbhW1iBir4PYmC1C4Yn5vzGH/Xtt5l7d5UvEyndtKrjKl6CAvio/v5Oc1nVZvZEEMzdxp5UyVTmrSpKhXmbfkr3B6kh6RF6esvBx/5o3RDWVJYj4MooBjfj6VRvuDtufKTeRe5sptP2eUPu0kjQ9GGxfCf7AXqDJRE//ziLaewdVy1o5jxu+RvHzQh7mk9lzNgcwr0cvMD0hVfEkQk9hrGIIZs/vJAIZlWQ==
    access:
      jython-web:
        allowed: True
        groups:
          - jython
  sdower:
    fullname: "Steve Dower"
    ssh_keys:
      - ssh-rsa AAAAB3NzaC1yc2EAAAABJQAAAQEAmVmA8k/f9ehIyaPoLVNK58m7s6J3UyoQaRucwVdDZbSU7WXNFyoZj8f7wjep7WrMCqjw1vw9YjRzBUXpkTNQ5VYzx4wECHtAVSicC4y+zHOv51+AP+wVjJH2ATkaMp03L6xGQ/LeLRPRHTMQnLssmmc8OHvtrG/9uWLYTKi/29TSv6uwYJYGw7QFxq8ILb2prKRTujjxn7nHYrvakraGYPjWJR38rATg793yjjWrXCjfLE0BuzUePw2SE1IyHs0WXTbhGIv1KRcE8U6MrDI9b2wS5j4hwrpPXFiiQhQTTxwqXrxWPd1QBCF/rvqtpxLwkaD+IuA9A+pqqiIISc3AXw==
    access:
      downloads:
        sudo: True
        allowed: True
        groups:
          - downloads
  frank:
    fullname: "Frank Wiles"
    ssh_keys:
      - ssh-dss AAAAB3NzaC1kc3MAAACBAN3K472pNxIi1LIz6VeFYVmsRDhj5Kx7xKpoKVNUBXKZastMQ7rhI/KeRVshhR+q4apR4EbKE9qsyO2632RYzC5W8lc6YKs/lShMBDe2knnyQsaLLguOsrn8+1PusdxPPW91XCINTrKyr3Nwsh5dck8OvzJ9ahCIW0RlZiV3dyM7AAAAFQC/4DxBpn/7d2QVFjf2jL6y3AtgeQAAAIEAva/IdhMV7inBKd1aMBCNdul59eAuZImjAgAY6HNJoh7iFHHx/jZRc9vhk8YfWV0Bu9MIECVN8rbdwrYCvmkDhreTYZ4dLntO7qtHgjeIEX2qZbz+WihmcF8G2XubShJSX1eGsbgl4cNPWbTBf/EzLf++RdfIqSMWuZO6/LQxL8oAAACBALSbnQv/5eQf3hGzXb91tDutWLjx/QvR7UXmJjgvAhSdAbvACLE+hF30XXYXwlwAycPn1G/cYZThMlVZnHZXKscErir0vNKFR922vjfjsTZ2QfNL5RCpggzeMMT8J6s4Mo936vut8nsWUJ69Bwz2Ib4/GPE2NcmAb6iuht2HmqaI
    access:
      pydotorg:
        allowed: True
        sudo: True
  brian:
    fullname: "Brian Curtin"
    ssh_keys:
      - ssh-rsa AAAAB3NzaC1yc2EAAAABIwAAAQEAw12z1o+qAtnf8lWK+pQi1spjMZPWbdPRBHaNu2l2O5ZuOkEGr8Qlbcr3M+1CuXUOQ4pQg9uRegUhjVXG9pEmWvEtOHVnpDJamtyO6dTgesLazclQRuarK10QZKj++H+QbNUWqgj0EiQk3cybmDKeMva43pmkjpbgxBjpUMVmvOLqwsWqPdK8gCOvClwN7wT60xpcoh09oigGARsyIMHKB3TBjDnV6hivxL/bQE1q2h8iS3Ch1b9PCfEHRC1sLZxn3DzE/WX4Y80JJhRBGVFOkdzHZf43dtCS3gwZyDRiGz0NGRYhrkxnP1HQNNmvuUqQSSy4t+k5tDiBMIruX6kTcw==
    access:
      cdn-logs:
        allowed: True

  dpoirier:
    fullname: "Dan Poirier"
    ssh_keys:
      - ssh-rsa AAAAB3NzaC1yc2EAAAABIwAAAQEAmFIbg8mdvn7MQajwpBWXdK+utvP7+d0f391Z+v2r79Pam3/9j8VFBH8mioAmp9b2iFL6DZeDOYWOIM5R3U/bIVvJ8/2kZpE+rItJRyuqYQp3ZbOkBTxmv1avRfX4LSaM4uvurtSHK+VFbRXRlSKr7gURM7d7pUXTsuqAuGiJeBRc492RhKsaRf21/7+X8LyUuIWmaGn/CRgn6SBtq1xTilCAlkiRFBbUR++qkHWonfImAeHN6EiIx9fwtvfjtJA8kW49t75io9HoIovA24psyfZZuMFYkiPzDtPDXSm0fhwx0IbAZc2W1iWqYLbrBZM7A3QGyF61JeafxuC+Jzm3Ow== dpoirier@caktusgroup.com
    access:
      pycon:
        allowed: True
        sudo: True

  dchukhin:
    fullname: "Dmitriy Chukhin"
    ssh_keys:
      - ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDCyaAGW8HiLvLP9whINKHck0faKwryO++lqA+GYD9G2XZkbsxcBKqU1b3STGn8jXrDjtr4FcKXFGLq8uOS4/FOiCs45TwLOcA4enyTbaPxrZA05Zw5J5hYZ1y4bBvc+GxytAoyySN3MTG7Q2Mb3TgTTl5G/J+d+zGljHBbrjn1Y3xCRPi9ed82bzqdI+6S8kk7kzub++EScjegTfbPhtsyrY4WbZ0Z/hW0Odtt4rXhsktdfLpYTZ3jJs9YapOBFHblRRlZxtc45o5Q2+4B8z8dr1t3jiFqJJdTL5Cnn+DzD/CHiJE/hT8hc4XcHJPjfymMlX2c6AhxN87RcOWHplTGirkNwSnsyquM4fzZPlXpR7aPbTXQNjGrryk95EEkes+/RmdES6QCptGCqGtcmCRFvIYh4v50r7OvyU12GJUmN3HWyDcLMY6JmDvfYzz2ETBeMPWVP++N4IVDzG08WenjA4vTkw2Yvwaodbhe8m0vodqfkNX/ll13wMKf6TAKLFOLc8NfRh4xP936d4xL7pcsGS6LC6pVd6JjJ3CKKHqGcxRuw/00IzFoRRgs+fzIhmXUKbrFtAJbkXaYpV/rfzRc+no3ddWwZ4hK0FaQ5YBU1rfkCBoJzzIWFdJc8dqfbSMwMohHtFZGDhX9seJoo5KZFUbzl0qSD2hJrehGB3k3fQ== dchukhin@gmail.com
    access:
      pycon:
        allowed: True
        sudo: True

  ncnwoko:
    fullname: "NC Nwoko"
    ssh_keys:
      - ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDPauOc4l4koOoiwAH+4eDP1r3fAMAA7p45fYdzJX2Rzs2rn3bMA1pJFEOIr9aAhAY8EY+dmpoga0P/nnT1WWfkp5lRjEDHxCz332o81BAqBS9occ0b6l48iHh5itFSw6sBG0iidbMBh8Mf+vfOnwRvCdFfANa+LTDuuQJfiDdq4brrfnUgeyutAzylhSUrizWs6sQQr10uz2L5RjnmL+kc20v9ciFgXVHuSSX3aNj4ViXQVvuHEfUyOwJQwIzqJHbho/0Xh/6/aHcDo8NQ2ygAzf2RCiF3Z147xaFPQq9kF9BF3n1THLvKovP1/qMnOGLaucGsAGQ4vCezAfbgM+/BOIzdIL8jpkEKVmWIR0sR/MjZZT1zIWmnFSnTrb+2farStZo6LtiyuMH0GA4TSrin8Ss91TknjxovGqmpVi2VSO4I6CFy2Nh6dkSlGPtg6wlpi6Hx/qtdkIk2f/Ss8E6cL4FsqEvHXzCqPSaQM7gR+zAx+uLp5H/EQ68TCW+Nzgo/AMXkeUWG9xIt5LcyyInApUFnPbP3AuffdpgI/jyA1sNpZhjR4Ui3aKsBwuEM+CVl14XytjHqQUqBbDZ/Q+Aq7jVYy4wlb0FykeMJShZlP9pM2GlJPBV+jIB5bwLuQYmtiRNOYmMtDIQqsZbkMLtuHEMdKNy46G8V3xfCtLMZqw== nwoko.nc@gmail.com
    access:
      pycon:
        allowed: True
        sudo: True

  daaray:
    fullname: "David Ray"
    ssh_keys:
      - ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDDAjwyvvD6fojZ47GDqEBR1uN8dEBtGTzyFnQ6rlJT01Lw628PhSY+XwZxG6RfQt2+cFVkYo9cGpHWyGM4hP65Ft1XNkOiXAsa9yoWykOAlqpOEMLEHZ0w5NsDP+uCextuVIEIaBu1pcvKgUlcSJlDhoCUF00DBbkYDpNKRY2f1AN49HdfXB+xGGKnb6xJtb4487fDsE10pGbPRWsvL2w2FzHFwt7a/1rQ03y6sFHZhURSW4jCwBKAvdNazVrL3A/cVXJEBa9Q1LSfvG18ILk8GOVT7gmQLLFOJAeSWK576PjIizBqB1wgIi3sSjCWS22BocONrifqQ9v/URA4E68R dray@caktusgroup.com
    access:
      pycon:
        allowed: True
        sudo: True

  scottlee:
    fullname: "Scott Lee"
    ssh_keys:
      - ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDKm8hLNaEIJjTrBgKGfArpvgBWRG40dxFJP8iKULl7jvY1v7bcNztNhrF4h+CvH1CqFCiN62gH3dJM0/10xq0PYDXTPIomar3AqekrkiTDsDyO0vYNySDQPKF1iGhzO2SPe1zwxfDQK5n8actVZGqSkAPpDwmWhwwYN45JNar+H02vGb9H3eeSFza8BD23U0T5sHPNA/QDK12HzrJ1zakRzFHgtZ8sjmp19NVIac3KBFGFQxiIXpzZ1ZJfJdYuluBg/Owc+vVxij9XwFRqB8olOVUi5kz1lS0e45mBTIdNmIIdIbXcsWCn6Ay9MBZ3+ZUaNqtLIg+WFjZR3PVA+x2R scott@Scotts-MacBook-Air.local
    access:
      pycon:
        allowed: True
        sudo: True

  lovewell:
    fullname: "Rebecca Muraya"
    ssh_keys:
      - ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAB+wCuGhMEXvS1ys+Oox2BvQR+VhyaCr2/KgHTCg7txHTmEYcltyuwVKC0/uTKNFa/VBkgXMWa+6vVQUtDu9O4Yh+rZ0CCEulTwRx6w01oDipvg3SN4i4qbjHYvvA7D4WuXJ1KtKdqYqjxlOBqCbX9yqgvQm/Jntmr1ihKdWp5kKT7YliE47y0ab0kzJoPH4jTrXqKRVldpiJlUhHQbXj1uhSeN1uWYFblj2BivEfO78yR6n9mQRW/EN7CDcDRQJ99sgynEnOxHtpkpAyJZsHjSRgIrB8JUXKhSfSDINttdTNN5Th3vWq+2JdhOwpbgNfd3cJ9csvdTRjg7TfGifLBKmoEHVRg0WF0JR0YiF3YK5yayoJEJ3VeH9AAaXObUprjyiSPQqcF4zg5EY1ojgdPXNWw6gWs8aVjIrqmStQKYDy+G2s6l816hAsfg1Gf6P4ZoEdIelXgpLlzLbphocfmHujkonfN7QCgGWU8k1ABaf8MBzA1Xd5Dnbp/aQ1VCEmVRhY3T3dQp8S/SmFbn6zl27h3THCNFXkzOwpCA6+u2dhhWVgibO4xTU6DA1OCbQpZwcZvVNGGD5nBTHQRABgyU64C7ZtvKg1CHcXqM7ZCWpFZmuw3SVQdl8MK1RuhtjrB25LV5GcB9eY85hiElFlh+utKzJxLkyaU0rJDIw== lovewell@caktus007
    access:
      pycon:
        allowed: True
        sudo: True

  zware:
    fullname: "Zachary Ware"
    ssh_keys:
      - ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC5vqLruv6gzJgZ7zaKJnaWzzWAW7azAtetqMPVN+67cGMcQtnRmG2ih6UOXc1fA0fuZudKBgqlRw3Yg2UcT8ehP505PoHVuq+j0uZ4ogzQ8BJbZIaMEfbPXdzwUfqU3Ju3sur0XQYu0HHexKUU6ZZjjwl5LOmw9dTtY0cb7N7emePy//c7IaDuNsWg+4zaTDUwEhyWLVw6Ev4e0b1ufDxTvHqRXMVCfq0IYMsRXcg8+88GGF8kIS4QMbX/GcsFfOLHj35aJbAk6dqcCZWXWX/bRL937KYl9zENOkvlRbodEZqufDBsa+7Dm29LeV9JPfKJU3+5qM/LkfYPBiw1rH0L zach@screamer
    access:
      speed-web:
        allowed: True
        sudo: True

  haypo:
    fullname: "Victor Stinner"
    ssh_keys:
      - ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIEIVzct/vFIVEAQ5aG8WJlJJWPNZYbVDyI5jwljst8mk haypo2017
    access:
      speed-web:
        allowed: True
        sudo: True

  brhodes:
    fullname: "Brandon Rhodes"
    ssh_keys:
      - ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABeQX1NzdjdXsKne2LL1ygSV2vRkgFPlvkcOcq+9/yH+u+yWoEn3hscLECsKj0YqlpWi7lCF/7/wOhFgCxW0U3nkbNjmZAjfzHmliGP4h+8jPkfpF+cz8ioS3zhBdshwNy/nFOe2fqdllY3KoJhOfc0i75Ls7udZal44f6GzY9UwChCh4AKgt3T8Frx/L9SLu+hcVALKo7t+ydY440BMfylyRNMkNEFi0CjMieSrOk3mT1TZLcYOGpPg0oSdkFeQheDjOqg/5tkYSr6fHtPtdemELWB+Ys1PQWNrbcEdPIp9pXABT6KJ/kON5o6PY6DlTQ7R6PQEQDNOUpNeQrivRBGeoFldm1b3ipL3IbOVgcPyxe2kvUKeVA2Zi+z6otKVyWBrjyt8FPbalt+MVT6KKYZHqxlbQ8yX79I8pvIkHHBKVdIQZ6wKCsc/p8qaVGF36Dxa+altUxEfnsWVBjLTGswBHumyDWx3BIydVRgpOoBiDxSCpfLANpEojV brandon@bernardus
      - ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABNwFxC3bl/tbOnfbuq+MqRS8rn7BJMEh0d+TWI7X+uj9l3OFVEaonHvvWAnYuKaGbRnUJLEPy/Apglrie4yI00ThMVScufPDMGQ9qL+Qgu2y12QBK1odAIs60KNZcodUhCWGgZg0MAg6HkNK1pXSqWd3VYtexcbgm5Y3PT8k/qmvJGJBx/11g5qexnKU4/g/wyhKm3QLceUZ1WJDMSAm6H9oR4xUEQmb7RMl9qhT0ViHdmkaw5letTVvvqa99DO1CI/PymQIy+qaXqe8r5xqTbPzSosQD3Gt0N6rebwKhXPiG8pmO+3nYFY6sO6Peue83iqMwx9blROUt6Z4uYO3INSZh3YfR4S2lboPeHRFky2Fb5j0ePjpBbdfFdRCijdPlTS+AWB+Io3Da5uHKyR05MSuRmlIJo4DZ brandon@oldrasputin
      - ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABl1chNZ5tPYSLN52zph0seCos5XleYnSXQGezZ7sk0VNwIN7viVDsHdYFTQ67BEeqjkNmnUY0XLgYskttip8wzvEsAsXVjxhgMYY8aVWMkGzTPC0m5o1awohkH8Kihd3P7MYbybZcCl7KY5rDHZjNbfIFJPetdsGwUITvUBwcGudag0Oj5dpoaloUmQcPO3kr9kl6jVYHay/dYQxwIHxLOsHgqpnH7SqBomZMqAO5d9mfaJG8L8qf702rzNlDOW8B5nRJQ1rKR5omFo4xXalOXdQriKPbNz1RCEwrfZRv1rhFXMgpk/eVUWV3FotDlRR93AheRMpcISjVMe2d1aDUTBNWunSkkVTJbTDTmDvK1WYe0ufVJMNEFmP3l3foZf9eywqXVm1pYPzGfNag4I2/2pcxrDzFobRW7bvXLfkAUE+L1IJ0r9bTSU01EyEPCMeUvn9wNY6wc+r1gUjg42py1OPLuOzskduAR6QdlGgt1vdUhQ4sp1xKbhruYj6810kTm58n9COUFxoax1pWbY4cSZIBMX2oIacv brandon@old38
    access:
      pycon:
        allowed: True
        sudo: True

  jafo:
    fullname: "Sean Reifschneider"
    ssh_keys:
      - ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAEAQDdVGymQaLMlzaHvbEnxR7TvFiad4xrlJTCJvgygNrSbJCm3wTGSW6Yj5NTHtzWCPTYAmgZYLFZ7pJmPefHV6DLdAFJSA4HwhPOFM8vM8ERo0lSgR6ArlG288Gi9dvjh8O/jZwq0uW4lgiW8KFMhnr/HJy8rTZwqIPz680TakUxE6G48zQW+NUvL7Jn5cXLuYARvGHAv6ajkhhuEqCw1kjCnkgCh/Cl0YvIeTBfdGBGC2SiD2BOPzMYyTSzqm9tCRuscpo+JfKQZa288/9XhG0GOEsxg9h5BDJ7CKj7XxlmOcVKPgHeuvHQ5Xb1Eg5X92zpcBvcW7wgpk0lvAa/YqFLI3i8iNDDtfK40s1NvAW9/0+GUI7isNm1+cEvJfrRYbZ8XZqCkv9kS+d+AOua1iboTU7/cdyaRwm0Wji6Id3CswGT3XwxjtoIz1S10twXj5fjSrJ5ZzBxMQ48mcrlyVpBSvvArzgUI4yWs/9fl0BFVjP4VERstIfXVNNQ16RYQDLvtSHLYt/2lXFWMAWEBEHbfcW7NsBoGkLLJzUlh/J2HxdNuHvizUX6ZzF3+ZS7hevUJJnkgLgccdbqrv7UPkMNXaWxQqU9b5XDN+58C+BGa2JVJT8aWSjUQHzndjza1CnWVAvZ9FxrNh6Aey7Wjkat0zKbhY94t7MmVtYvxosg3aNu7vvNT+X21MVn/3oi3XW1GQmJsT70H7HeElY1fi7nTfTQoOfckxxewPpJYJiBeajngjpgMmIzTzP6j0AH8jU/pIpUtn0WYFX7axhiTRE4KmWYdEcBZ9JpYF6Vp/q1teXV7CSKH5e9TqsFng10DpPEkfQ5Xp3hupUpeu/Z3CTHAlIbGL8YwhQHYulwKrBGUAF54B+kRv4a57Ta3xfn6WMiPaz/pFbG6sxScqFffMBlEzAp3RSRBWMl8Y8gYRQdWaJzyU2FTKRJG4LifcQwZ24OrTftLyEEEkmjK5dQS3ldmO7XRIFRSuPRWj2hOCC06ZZzsZF8xvU58grl0oCOPUQbSDeyWZC2xilR+NEmTYw5Alg6Q9AB+MfJWj915UD0IR5QQtLO9BCZEZ1aVxl30/0iVF8MGcS8+PKlYpp51FFXTI90vXkhPVSeOofTfZ4gsamMRoLblLL2WycbY1vMOLC39BcXhOz2PNGr5RhhCcQbUn5D5FlMiznkhdxGobX5mdSxHHVjPW8YtB6phaRFhZon5ycfbihT9ZFnyNTHTta6a0u/0aiHW5eIbn8Bfasr9bka8F7yM75GGkT4hH1NDuK88nJbxmfnds4pELhMX+3J50juHSE3RNaoPFFyB3uZbdv4d67TZtEN5BuIfgdfx8fgLnmWTeGtpn5BSkQLD8/j jafo@guin
    access:
      mail:
        allowed: True

  msapiro:
    fullname: "Mark Sapiro"
    ssh_keys:
      - ssh-dss AAAAB3NzaC1kc3MAAACBAKRFoQ6Ebp1HO9rMhDFIvMrvQST4Q/FgPsLP2rz1cVwJ0NQ7DKB6wl95AdifypksDDClsBFxOtxD49YN4SvQS0tSqyNwOdvpROsEH4e/orDl2oJhOYzZxDkwE0UZ+VHC+XeTTWG4qWlPLMNr/ExRAxJzOKZCs66QggNXwoMfq/IJAAAAFQD7u3RSnWiM6uIYARBlUCthyPqHHQAAAIBK5gA7eGLV5+utFPnWsxGz02ZdoOwMWEPhpVaWS9lU5AhcTck1HJcuq/ktqeILuEfJIj3V4ICDNw4WjEoEv5b3YQNAbHVYzhBhg6nsPmzaF33qcugglFqeQWJzff21qN4tH5GamGj76Dqn6tk/hW+xfEmEZYxnsmk4Q3UQ4oP2cQAAAIBL5PKxDU+DmE8wXGQIoyNpj4ZzYpoUmqOveQd4nYyp02QT5oE0uIsxD1lGhkoAKlaSuJNFUlGckXx2DY+eSkIAcLo5i5AD+S8W9245+V5HwtLLj6dTTEUTN2GzR0KofPFn0MgODkaYcEVp+L8+QQJFj/fBENA5E2WomSUT6Hhz1Q== msapiro@msapiro
      - ssh-rsa AAAAB3NzaC1yc2EAAAABIwAAAIEArQw24fE8BZmcrtxwuiMOC3g5YXwi1YVLNUkhVSwrHyhvlcu5jRP7pj05pK1naEz8MQ4crNnrhTAgcpMJUAyJgQ/y0a9qrRWO4H+hVtWpMTgiGFsscoKWdu0xTnlK3EbV/vBeMPnSd0usXR3E0+I6GlWJ4/SmtCx0OwqEtfduZV8= msapiro@msapiro
      - ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIGjnfQcLTNj0eXqDkIQo75lXiZw+CJDWSHCD70Ao7P7q mark@msapiro
    access:
      mail:
        allowed: True
        sudo: True
        groups:
          - mailman
  hildeb:
    fullname: "Ralf Hildebrandt"
    ssh_keys:
      - ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDTLpYGZdP2XPthO2eI2sp1mN8C5gO6jGu3wO2j0uD5xNLid2jyadBDL2JpAgxwYv6uREopdST17qVc9hMmPXHEJN4tvLyHjUcjsL80QkVneyuFRT+oBqahX1+h8aVkk8vLuwKsVO5ARqcvYF846YQnRcdJRkPsdAZ4GD5jXGE6EN/yJLxEiVvCMbi7DvegxS6sUxl6E7380bdas3l46R+kotQXlVIw8NnakHFpdYNFlPF7pW1Kd2pCIQGKkOQaSLvuVKdOpKTyG4337R0c65/PMmDk5Uuqt78RbcSV/rTbuaxNEPLzrRX7DvZ2baZlf2vJMdsl20hFiNa1J4xIrG6T hildeb@senftopf
    access:
      mail:
        allowed: True
        sudo: True
  p:
    fullname: "Patrick Ben Koetter"
    ssh_keys:
      - ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCuD5H0/c6PTIQ/0wjyIm0o6X+1QHEhbrZOWQsk8HtwEeWgtwtXacvkUpyzPnDqt2uWMUCEFytbMRoCKDFUjx0SKHEqKIYs5dmm4MfL2v64mKApQg2AKc8iu9k3y+HKvHD26u25CUljTbS6BRSA7Rrrq+4tkhIG7KNxgKERxHX+3iFrIJMtZtkkmTOhu0dnAitz4gXvK9/w0p/j2CLEN5H8lMnNbKGcE/7K6ORgkSEmKnEuZdU1Sk0M/GEx+/81ZYgqNx8Bt4hIMm7Fm6sdTZu3VlOj8/hmcIxcrBbl9ZU/TwnqBppacI6YQCFKu/M0oy3T2r+/U1VVITMABPoZqjUx p@sys4.de 2014
    access:
      mail:
        allowed: True
        sudo: True
  skip:
    fullname: "Skip Montanaro"
    ssh_keys:
      - ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIJA80VH5sZrqYnsFzUiUTKT4Wv7NsfOBIjxCyoHM14L1 skip@montanaro.dyndns.org
    access:
      mail:
        allowed: True
        sudo: True
  mdk:
    fullname: "Julien Palard"
    ssh_keys:
      - ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDKA7DgTQ0G7+kdsX0lIUOAAOllwGSCu8s8TxPvr/61Y8q+pIO5mrZycI0xYcKP5NZaABqlFyXUUNfLj7RLqteBxqq2QZP4NOJ1MutYRIkzJ9YW0f565jHaOqSguz0MY+1sCHtuEPiUUZoNexkKN7SIx60SfoaMEvGjAj46txA7VFbJUuKcJtA1Yvmn0C0KoXUUQ/G+JqvjQ7QuKLQYdTZ8S9OEvNaqNfwNSwvy1/LCnuajFw0O+H5bz7AcS5Iuj+9k8wgHPK1a1rQEdteOcn2XBCvta/VOVlFLv6/9K3iU3EJ1pyaZ88UkuJef8aWnH/AJGaF2gLqUbBuL+UeXyD41 julien+yubikey@palard.fr
    access:
      docs:
        allowed: True
        groups:
          - docs
  berker:
    fullname: "Berker Peksag"
    ssh_keys:
      - ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDdJMNdov7ZzE6LZcYucb1dUUGaiRcBrqvJpQEgsqh50dSFawxRmjGtT2L7qcpYC/wxlUkTuUQpw8SepViIQuTQhIemyHfUUM0CjNTbEXE+lnVg2Re5V7ShsfY8RE3UVjbN3IkJW47dpASt5on7Llqa6eS3/IFdHa3pRTf35SdlsaF/t5nXXSwnFzUVY/lbv6gYB1Tgy9Pbi35MvlAS1AFstTFTz5LylimGfo7dNIQHAQHQc5M0zqcspvcPlUzIAgm8RYSp8L6kQ5jOagnPtCEGAcOHKRX0427l3GxfYhziGoBjvRU0iwuOtzloepAHXvgZJk1/1KycvSRRcFtAoWYd berker.peksag@gmail.com
    access:
      pydotorg:
        allowed: True
        sudo: True
  maxking:
    fullname: "Abhilash Raj"
    ssh_keys:
      - ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDZV9XLHJV0bxVyZ6pbKuDaehAx9c7mlw9RZDCs0zaCBK5asyFGCg6ToDMpuBgUUT+j5AyC9tE73srWZWU5tC2VnwuMquOFzGgwon2Nl08+TsgZ5TzVe2JTJLpyvyO6uCJD2qRJ2Euq47PIknIfnnJtlWw0igO4Y9dYpAs32pxS4jjHWdbqjAEPDbMH3WGWQLMcn8A1JR1wYC11Y15w/RHTZBo9yAbJ7GuYIYcVVolPUdfgpnZehmZUydu8UtAvIRQURpnNiULZfxW5HezeUCwYmM/X1lSNZhwsdinqXsrXc2uDG8DRmLKEh2RHzy/bwUcEdJ2KlE63uoUdwphmTpor maxking@angel
    access:
      mail:
        allowed: True
        sudo: True
        groups:
          - mailman
